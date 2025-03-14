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
	
	@State var success = false
	
	var body: some View {
		NavigationStack {
			Form {
				MedusaServer(success: $success)
				
				Section {
					Button("Save and Login") {
//						loginVM.saveCredentials()
						authentication.updateValidation(success: true)
					}
					.disabled(!success)
					.frame(maxWidth: .infinity)
					.buttonStyle(.borderedProminent)
				}
			}
		}
		.onChange(of: success, { _, newValue in
			authentication.updateValidation(success: newValue)
		})
		.disabled(loginVM.showProgressView)
		.alert(item: $loginVM.error) { error in
			Alert(title: Text("Invalid Login"), message: Text(error.localizedDescription))
		}
		.onAppear {
			// If Credentials are saved
			if loginVM.hasTokenStored() {
				//			TODO: Check if token is still valid
				authentication.updateValidation(success: true)
				
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
