//
//  Medusa.swift
//  Ticket Scanner
//
//  Created by Eric Wätke on 14.03.25.
//

import SwiftUI
import Observation

@Observable
class Medusa {
	var isAuthenticated = false
	
	var serverName: String?
	
	var server: Server = Server()
	var user: User = User()
	var products: [Products] = []
	
	// Add API service as a property
	private let apiService = APIService()
	
	// Add methods that use the API service
	func login(url: URL, email: String, password: String, completion: @escaping (Bool) -> Void) {
		apiService.login(url: url, email: email, password: password) { result in
			switch result {
			case .success(let token):
				// Store token and update state
				UserDefaults.standard.set(token, forKey: "token")
				self.isAuthenticated = true
				completion(true)
			case .failure:
				completion(false)
			}
		}
	}
	
	func saveToken(token: String) {
		self.server.token = token
		UserDefaults.standard.set(token, forKey: "token")
	}
	
	func saveUrl(url: String) {
		self.server.url = url
		UserDefaults.standard.set(url, forKey: "medusaUrl")
	}
	
	func getProducts() {
		apiService.getProducts(server: self.server) { (result: Result<[Products], Authentication.AuthenticationError>) in
			switch result {
			case .success(let products):
				self.products = products
			case .failure(let err):
				print(err.localizedDescription)
			}
		}
	}
	
	init() {
		self.user = User()
		
		if let url = UserDefaults.standard.string(forKey: "medusaUrl"), let token = UserDefaults.standard.string(forKey: "token") {
			self.server.url = url
			self.server.token = token
			
			// If URL and Token are set, try to verify the user
			apiService.verifyLogin(server: self.server) { (result: Result<String, Authentication.AuthenticationError>) in
				switch result {
				case .success(let token):
					self.saveToken(token: token)
					self.isAuthenticated = true
				case .failure(let error):
					print(error)
					self.isAuthenticated = false
				}
			}
		}
	}
	
	init(user: User, server: Server, products: [Products]) {
		self.isAuthenticated = true
		self.user = user
		self.server = server
		self.products = products
	}
}


class User {
	var name: String?
}

class Server {
	var url: String?
	var token: String?
}
