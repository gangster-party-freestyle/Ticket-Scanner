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
	
	func login (url: URL,
				email: String,
				password: String,
				completion: @escaping (Result<String, Authentication.AuthenticationError>) -> Void) {
				
		let body = LoginRequestBody(email: email, password: password)
		
		var request = URLRequest(url: url.appending(path: "/auth/user/emailpass"))
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
	
	func verifyLogin (token: String,
					  completion: @escaping (Result<String, Authentication.AuthenticationError>) -> Void) {
		guard let urlString = UserDefaults.standard.string(forKey: "medusaUrl") else {
			completion(.failure(.custom(errorMessage: "No Medusa URL Stored")))
			return
		}
		
		guard let url = URL(string: urlString) else {
			completion(.failure(.custom(errorMessage: "Couldn’t parse stored URL, it’s probably malformed")))
			return
		}
		
		var request = URLRequest(url: url.appending(path: "/auth/token/refresh"))
		request.httpMethod = "POST"
		request.addValue("application/json", forHTTPHeaderField: "Content-Type")
		request.addValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
		
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
