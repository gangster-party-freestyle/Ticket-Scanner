//
//  MedusaServerViewModel.swift
//  Ticket Scanner
//
//  Created by Eric Wätke on 08.03.25.
//

import SwiftUI
import Observation

enum MedusaServerConnectionError: Error {
	case invalidUrl
	case noResponse
	case notMedusa
}

@Observable
class MedusaServerViewModel {
	
	var url: String = ""
	var email: String = ""
	var password: String = ""
	
	var loading = false
	var error: String?
	var success = false
	
	func userInput() {
		loading = false
		error = nil
		success = false
	}
	
	func testConnection(completion: @escaping (Result<Bool, MedusaServerConnectionError>) -> Void) {
		loading = true
		error = nil
		guard let url = URL(string: url) else {
			self.loading = false
			error = "Couldn’t parse URL"
			completion(.failure(.invalidUrl))
			return
		}
		
//		http://10.20.0.20:9000/health
		
		URLSession.shared.dataTask(with: url.appending(path: "/health")) { (data, response, error) in
			self.loading = false
			guard let data = data, error == nil else {
				self.error = "No Response from Server"
				completion(.failure(.noResponse))
				return
			}
			
			let str = String(decoding: data, as: UTF8.self)
			if str != "OK" {
				self.error = "Server doesn’t seem to be a Medusa Backend Server"
				completion(.failure(.notMedusa))
				return
			}
		}.resume()
		
		// Check Login
		APIService.shared.login(url: url, email: email, password: password) { (result: Result<String, Authentication.AuthenticationError>) in
			switch result {
			case .success(let string):
				print("success")
				self.success = true
			case .failure(let error):
				self.error = error.localizedDescription
			}
		}
	}
}
