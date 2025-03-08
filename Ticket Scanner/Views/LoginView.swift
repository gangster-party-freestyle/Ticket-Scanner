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
		VStack {
			Text("Login")
			TextField("Email", text: $loginVM.credentials.email)
				.keyboardType(.emailAddress)
			SecureField("Password", text: $loginVM.credentials.password)
			
			if loginVM.showProgressView {
				ProgressView()
			}
			
			Button("Login") {
				loginVM.login { success in
					authentication.updateValidation(success: success)
				}
			}
			.disabled(loginVM.loginDisabled)
			.buttonStyle(.borderedProminent)
		}
		.textInputAutocapitalization(.never)
		.textFieldStyle(.roundedBorder)
		.padding()
		.disabled(loginVM.showProgressView)
		.alert(item: $loginVM.error) { error in
			Alert(title: Text("Invalid Login"), message: Text(error.localizedDescription))
		}
    }
}

#Preview {
    LoginView()
}
