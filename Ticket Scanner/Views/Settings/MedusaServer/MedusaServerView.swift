//
//  MedusaServer.swift
//  Ticket Scanner
//
//  Created by Eric Wätke on 08.03.25.
//

import SwiftUI

struct MedusaServer: View {
	@Bindable var viewModel = MedusaServerViewModel()
	
	@State var url = ""
    var body: some View {
		Section("Medusa Backend Server") {
			VStack {
				TextField("Medusa Server URL", text: $viewModel.url)
				if let error = viewModel.error {
					Text(error)
						.foregroundStyle(.red)
				}
			}	
			Button {
				viewModel.testConnection { (result: Result<Bool, MedusaServerConnectionError>) in
					print(result)
				}
			} label: {
				if viewModel.loading {
					ProgressView()
				} else if viewModel.success {
					VStack {
						Text("Test OK")
						Image(systemName: "checkmark")
					}
				} else {
					Text("Test Connection")
				}
			}
		}
		.textInputAutocapitalization(.never)
    }
}

#Preview {
	Form {
		MedusaServer()
	}
}
