//
//  LoginView.swift
//  Ticket Scanner
//
//  Created by Eric Wätke on 08.03.25.
//

import SwiftUI

struct LoginView: View {
	@StateObject private var loginVM = LoginViewModel()
	@EnvironmentObject var authentication: Authentication
	
	@State var connectionOk = false
	@State var connectionUrl: String = ""
	@State var connectionToken: String = ""
	
	var body: some View {
		NavigationStack {
			Form {
				MedusaServer { success, token, url in
					connectionOk = success
					if success {
						if let token = token, let url = url {
							connectionUrl = url
							connectionToken = token
						}
					}
				}
				
				Section {
					Button("Save and Login") {
						loginVM.storeToken(token: connectionToken)
						UserDefaults.standard.set(connectionUrl, forKey: "medusaUrl")
						authentication.updateValidation(success: true)
					}
					.disabled(!connectionOk)
					.frame(maxWidth: .infinity)
					.buttonStyle(.borderedProminent)
				}
			}
		}
		.disabled(loginVM.showProgressView)
		.alert(item: $loginVM.error) { error in
			Alert(title: Text("Invalid Login"), message: Text(error.localizedDescription))
		}
		.onAppear {
			// If Credentials are saved
			if loginVM.hasTokenStored() {
				guard let token = loginVM.getToken() else {
					print("Error: no token stored")
					authentication.updateValidation(success: false)
					return
				}
				APIService.shared.verifyLogin(token: token) { (result: Result<String, Authentication.AuthenticationError>) in
					switch result {
					case .failure(let error):
						print(error)
						authentication.updateValidation(success: false)
					case .success(let token):
						// TODO: Store Token
						authentication.updateValidation(success: true)
					}
				}
				
				
				//			TODO: Enable FaceID Activation in Settings
				//			authentication.requestBiometricUnlock { (result: Result<Credentials, Authentication.AuthenticationError>) in
				//				switch result {
				//				case .success:
				//					debugPrint("logged in")
				//				case .failure(let error):
				//					debugPrint("couldnt log in: ", error)
				//				}
				//			}
			}
		}
	}
}

#Preview {
	LoginView()
}
