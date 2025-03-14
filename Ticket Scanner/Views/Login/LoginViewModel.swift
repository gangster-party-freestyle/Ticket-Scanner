//
//  LoginViewModel.swift
//  Ticket Scanner
//
//  Created by Eric Wätke on 08.03.25.
//

import Foundation

class LoginViewModel: ObservableObject {
	@Published var credentials = Credentials()
	@Published var showProgressView = false
	@Published var error: Authentication.AuthenticationError?
	
	var loginDisabled: Bool {
		credentials.email.isEmpty || credentials.password.isEmpty
	}
}
