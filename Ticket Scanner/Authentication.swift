//
//  Authentication.swift
//  Ticket Scanner
//
//  Created by Eric Wätke on 08.03.25.
//

import SwiftUI

class Authentication: ObservableObject {
	@Published var isValidated = false
	
	enum AuthenticationError: Error, LocalizedError, Identifiable {
		case invalidCredentials
		
		var id: String {
			self.localizedDescription
		}
		
		var errorDescription: String? {
			switch self {
			case .invalidCredentials:
				return NSLocalizedString("Email or Password is not correct", comment: "")
			}
		}
	}
	
	func updateValidation(success: Bool) {
		withAnimation {
			isValidated = success
		}
	}
}
