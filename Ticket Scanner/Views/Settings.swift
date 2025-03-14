//
//  Settings.swift
//  Ticket Scanner
//
//  Created by Eric Wätke on 08.03.25.
//

import SwiftUI

struct Settings: View {
	@Environment(Medusa.self) private var medusa
	
	@State var isShowingSheet = false
	@State var faceIdEnabled = false
	
	@State var showAnimations = false
	
	@State var connectionOk: Bool = false
	@State var connectionUrl: String = ""
	@State var connectionToken: String = ""
	
	var body: some View {
		NavigationStack {
			Form {
				Section("Server") {
					LabeledContent("Connected Server", value: medusa.server.url ?? "No Server")
					Button("Edit Account & Connection") {
						isShowingSheet = true
					}
					.sheet(isPresented: $isShowingSheet, content: {
						NavigationView {
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
							}
							.navigationTitle("Medusa Account")
							.navigationBarTitleDisplayMode(.inline)
							.toolbar {
								ToolbarItem(placement: .topBarTrailing) {
									Button("Save") {
										isShowingSheet = false
										
									}
									.disabled(!connectionOk)
								}
								ToolbarItem(placement: .topBarLeading) {
									Button("Cancel") {
										isShowingSheet = false
									}
								}
							}
						}
					})
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
	@Previewable @State var medusa = Medusa()
	Settings()
		.environment(medusa)
}
