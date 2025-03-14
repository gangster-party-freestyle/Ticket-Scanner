//
//  MedusaServer.swift
//  Ticket Scanner
//
//  Created by Eric Wätke on 08.03.25.
//

import SwiftUI

struct MedusaServer: View {
	let function: (_: Bool, _: String?, _: String?) -> Void
	@Bindable var viewModel = MedusaServerViewModel()
	
	@State var url = ""
    var body: some View {
		Section {
			LabeledContent("Medusa URL") {
				TextField("https://…", text: $viewModel.url)
					.keyboardType(.URL)
			}
			LabeledContent {
				TextField("\("user@example.com")", text: $viewModel.email)
					.keyboardType(.emailAddress)
			} label: {
				Text("E-Mail")
			}

			LabeledContent {
				SecureField("Required", text: $viewModel.password)
					.keyboardType(.emailAddress)
			} label: {
				Text("Password")
			}
		}
		.textInputAutocapitalization(.never)
		.onChange(of: viewModel.url) { _, newValue in
			viewModel.userInput()
		}
		.onChange(of: viewModel.email) { _, newValue in
			viewModel.userInput()
		}
		.onChange(of: viewModel.password) { _, newValue in
			viewModel.userInput()
		}
		
		Section {
			if viewModel.loading {
				HStack {
					Spacer()
					ProgressView()
					Text("Testing Connection")
					Spacer()
				}
			} else if viewModel.success {
				HStack {
					Spacer()
					Image(systemName: "checkmark")
						.foregroundStyle(.green)
					Text("Test OK")
					Spacer()
				}
			} else if viewModel.error != nil {
				if let error = viewModel.error {
					HStack {
						Spacer()
						Image(systemName: "xmark")
							.foregroundStyle(.red)
						Text(error)
						Spacer()
					}
				} else {
					HStack {
						Spacer()
						Image(systemName: "xmark")
							.foregroundStyle(.red)
						Text("Unknown Error")
						Spacer()
					}
				}
				
			} else {
				Button {
					viewModel.testConnection { (result: Result<String, MedusaServerConnectionError>) in
						switch result {
						case .success(let token):
							print("success!!! Calling function now")
							function(true, token, viewModel.url)
						case .failure:
							function(false, nil, nil)
							return
						}
						print(result)
					}
				} label: {
					Text("Test Connection")
				}
			}
		}
    }
}

#Preview {
	@Previewable @State var success = false
	Form {
		MedusaServer { success, token, url in
			
		}
	}
}
