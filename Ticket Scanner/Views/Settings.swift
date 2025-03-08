//
//  Settings.swift
//  Ticket Scanner
//
//  Created by Eric Wätke on 08.03.25.
//

import SwiftUI

struct Settings: View {
	
	@State var url = ""
	@State var faceIdEnabled = false
	
	@State var showAnimations = false
	
	
	var body: some View {
		NavigationStack {
			Form {
				Section("Server") {
					NavigationLink {
						Form {
							TextField("Medusa Server URL", text: $url)
							Button("Test Connection") {

								// Reset logic
							}
						}
						.navigationTitle("Medusa Server")
					} label: {
						Label("Medusa Server", systemImage: "server.rack")
					}
					NavigationLink {
						Form {
							Section("Account") {
								LabeledContent("Logged In User", value: "Eric Wätke")
								Button("Log Out") {

									// Reset logic
								}
							}
							Section("Security") {
								Toggle("Authenticate with FaceID", isOn: $faceIdEnabled)
							}
						}
						.navigationTitle("Medusa Server")
					} label: {
						Label("Account & Security", systemImage: "person.badge.key")
					}
				}
				Section("Ticket Scanner") {
					Toggle("Show Animations", isOn: $showAnimations)
				}
			}
			.navigationTitle("Settings")
		}
	}
}

#Preview {
	Settings()
}
