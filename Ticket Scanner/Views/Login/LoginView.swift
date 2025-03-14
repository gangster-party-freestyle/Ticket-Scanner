//
//  LoginView.swift
//  Ticket Scanner
//
//  Created by Eric Wätke on 08.03.25.
//

import SwiftUI

struct LoginView: View {
	@Environment(Medusa.self) private var medusa
	@StateObject private var loginVM = LoginViewModel()
	
	
	@State var connectionOk = false
	@State var connectionUrl: String = ""
	@State var connectionToken: String = ""
	
	var body: some View {
		NavigationStack {
			Form {
				MedusaServer { success, token, url in
					connectionOk = success
					if success {
						if let token = token, let url = url {
							connectionUrl = url
							connectionToken = token
						}
					}
				}
				
				Section {
					Button("Save and Login") {
						medusa.isAuthenticated = true
						
						medusa.saveUrl(url: connectionUrl)
						medusa.saveToken(token: connectionToken)
					}
					.disabled(!connectionOk)
					.frame(maxWidth: .infinity)
					.buttonStyle(.borderedProminent)
				}
			}
		}
		.disabled(loginVM.showProgressView)
		.alert(item: $loginVM.error) { error in
			Alert(title: Text("Invalid Login"), message: Text(error.localizedDescription))
		}
	}
}

#Preview {
	LoginView()
}
