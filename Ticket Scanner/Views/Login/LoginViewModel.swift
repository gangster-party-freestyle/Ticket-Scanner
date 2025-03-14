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
	
	func hasTokenStored() -> Bool {
		let defaults = UserDefaults.standard
		return defaults.value(forKey: "token") != nil
	}
	
	func getToken() -> String? {
		return UserDefaults.standard.string(forKey: "token")
	}
	
	func storeToken(token: String) -> Void {
		UserDefaults.standard.setValue(token, forKey: "token")
	}
	
//	func login(completion: @escaping (Bool) -> Void) {
//		
//		let defaults = UserDefaults.standard
//		
//		showProgressView = true
//		APIService.shared.login(credentials: credentials) { [unowned self](result: Result<String, Authentication.AuthenticationError>) in
//			showProgressView = false
//			
//			switch result {
//			case .success(let token):
//				print(token)
//				defaults.setValue(token, forKey: "token")
//				completion(true)
//			case .failure(let authError):
//				print(authError)
//				credentials.password = ""
//				error = authError
//				completion(false)
//			}
//		}
//	}
}
