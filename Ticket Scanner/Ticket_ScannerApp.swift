//
//  Ticket_ScannerApp.swift
//  Ticket Scanner
//
//  Created by Eric Wätke on 08.03.25.
//

import SwiftUI
import SwiftData

@main
struct Ticket_ScannerApp: App {
	@StateObject var authentication = Authentication()
	
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
			if authentication.isValidated {
				ContentView()
					.environmentObject(authentication)
			} else {
				LoginView()
					.environmentObject(authentication)
			}
        }
        .modelContainer(sharedModelContainer)
    }
}
