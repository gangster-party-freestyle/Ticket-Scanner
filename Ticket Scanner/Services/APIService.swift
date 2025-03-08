//
//  APIService.swift
//  Ticket Scanner
//
//  Created by Eric Wätke on 08.03.25.
//

import Foundation

struct LoginRequestBody: Codable {
	let email: String
	let password: String
}

struct LoginResponseBody: Decodable {
	let token: String?
}


class APIService {
	static let shared = APIService()
	
	func login (credentials: Credentials,
				completion: @escaping (Result<String, Authentication.AuthenticationError>) -> Void) {
		
		guard let url = URL(string: "http://10.20.0.20:9000/auth/user/emailpass") else {
			completion(.failure(.custom(errorMessage: "Couldn’t Parse URL")))
			return
		}
		
		let body = LoginRequestBody(email: credentials.email, password: credentials.password)
		
		var request = URLRequest(url: url)
		request.httpMethod = "POST"
		request.addValue("application/json", forHTTPHeaderField: "Content-Type")
		request.httpBody = try? JSONEncoder().encode(body)
		
		URLSession.shared.dataTask(with: request) { (data, response, error) in
			guard let data = data, error == nil else {
				completion(.failure(.custom(errorMessage: "No Response from Medusa")))
				return
			}
			
			guard let loginResponse = try? JSONDecoder().decode(LoginResponseBody.self, from: data) else {
				completion(.failure(.invalidCredentials))
				return
			}
			
			guard let token = loginResponse.token else {
				completion(.failure(.invalidCredentials))
				return
			}
			
			completion(.success(token))
		}.resume()
	}
}
