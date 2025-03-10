//
//  Settings.swift
//  Ticket Scanner
//
//  Created by Eric Wätke on 08.03.25.
//

import SwiftUI

struct Settings: View {
	
	@State var isShowingSheet = false
	@State var faceIdEnabled = false
	
	@State var showAnimations = false
	
	
	var body: some View {
		NavigationStack {
			Form {
				Section("Server") {
					LabeledContent("Connected Server", value: "No Server")
					Button("Edit Server") {
						isShowingSheet = true
					}
					.sheet(isPresented: $isShowingSheet, content: {
						NavigationView {
							Form {
								MedusaServer()
							}
							.toolbar {
								ToolbarItem(placement: .topBarTrailing) {
									Button("Save") {
										isShowingSheet = false
									}
								}
								ToolbarItem(placement: .topBarLeading) {
									Button("Cancel") {
										isShowingSheet = false
									}
								}
							}
						}
					})
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
						.navigationTitle("Account & Security")
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
