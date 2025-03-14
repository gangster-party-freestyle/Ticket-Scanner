//
//  Medusa.swift
//  Ticket Scanner
//
//  Created by Eric Wätke on 14.03.25.
//

import Observation

@Observable
class Medusa {
	var isAuthenticated = false
	var serverName: String?
	
	var user: User = User()
}


class User {
	var name: String?
}
