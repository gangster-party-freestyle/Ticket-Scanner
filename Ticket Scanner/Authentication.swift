//
//  Authentication.swift
//  Ticket Scanner
//
//  Created by Eric Wätke on 08.03.25.
//

import SwiftUI
import LocalAuthentication

class Authentication: ObservableObject {
	@Published var isValidated = false
	@Published var isAuthorized = false
	
	enum BiometricType {
		case none
		case touchID
		case faceID
	}
	
	enum AuthenticationError: Error, LocalizedError, Identifiable {
		case custom(errorMessage: String)
		case invalidCredentials
		case deniedAccess
		case noFaceIdEnrolled
		case noTouchIdEnrolled
		case biometricError
		
		var id: String {
			self.localizedDescription
		}
		
		var errorDescription: String? {
			switch self {
			case .custom(let errorMessage):
				return NSLocalizedString(errorMessage, comment: "")
			case .invalidCredentials:
				return NSLocalizedString("Email or Password is not correct", comment: "")
			case .deniedAccess:
				return NSLocalizedString("You have denied FaceID, please allow this in the device settings", comment: "")
			case .noFaceIdEnrolled:
				return NSLocalizedString("You have not yet added your Face to FaceID, please do that", comment: "")
			case .noTouchIdEnrolled:
				return NSLocalizedString("You have not yet added your Finger to TouchID, please do that", comment: "")
			case .biometricError:
				return NSLocalizedString("Your face was not recognized", comment: "")
			}
		}
	}
	
	func updateValidation(success: Bool) {
		withAnimation {
			isValidated = success
		}
	}
	
	func biometricType() -> BiometricType {
		let authContext = LAContext()
		let _ = authContext.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: nil)
		
		switch authContext.biometryType {
		case .faceID:
			return .faceID
		case .touchID:
			return .touchID
		default:
			return .none
		}
	}
	
	func requestBiometricUnlock(completion: @escaping (Result<Credentials, AuthenticationError>) -> Void) {
		let credentials: Credentials = Credentials(email: "any", password: "password")
		
		let context = LAContext()
		var error: NSError?
		let canEvaluate = context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error)
		
		if let error = error {
			switch error.code {
			case -6:
				completion(.failure(.deniedAccess))
			case -7:
				if context.biometryType == .faceID {
					completion(.failure(.noFaceIdEnrolled))
				} else {
					completion(.failure(.noTouchIdEnrolled))
				}
			default:
				completion(.failure(.biometricError))
			}
		}
		
		if canEvaluate {
			if context.biometryType != .none {
				context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: "Need to access bios please") { success, error in
					
					if error != nil {
						completion(.failure(.biometricError))
					} else {
						completion(.success(credentials))
					}
					
				}
			}
		}
	}
}
