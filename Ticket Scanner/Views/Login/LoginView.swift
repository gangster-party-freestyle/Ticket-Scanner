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
	
	var body: some View {
		NavigationStack {
			Form {
				MedusaServer()
			}
//			VStack {
//				Text("Login")
//				TextField("Email", text: $loginVM.credentials.email)
//					.keyboardType(.emailAddress)
//				SecureField("Password", text: $loginVM.credentials.password)
//				
//				if loginVM.showProgressView {
//					ProgressView()
//				}
//				
//				Button("Login") {
//					loginVM.login { success in
//						authentication.updateValidation(success: success)
//					}
//				}
//				.disabled(loginVM.loginDisabled)
//				.buttonStyle(.borderedProminent)
//			}
			
		}
		
		
		
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
