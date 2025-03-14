//
//  ContentView.swift
//  Ticket Scanner
//
//  Created by Eric Wätke on 08.03.25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
	
	@Environment(\.modelContext) private var modelContext
	@EnvironmentObject var authentication: Authentication
	@Query private var items: [Item]

	var body: some View {
		TabView {
			
			ScanView()
				.tabItem {
					Label("Scan Tickets", systemImage: "barcode.viewfinder")
				}
			PointOfSale()
				.tabItem {
					Label("Point of Sale", systemImage: "bag")
				}
			Settings()
				.tabItem {
					Label("Settings", systemImage: "gear")
				}


//			if #available(iOS 18.0, *) {
//				Tab("Scan Tickets", systemImage: "tray.and.arrow.down.fill") {
//					ScanView()
//				}
//				Tab("Point of Sale", systemImage: "tray.and.arrow.up.fill") {
//					PointOfSale()
//				}
//				Tab("Settings", systemImage: "person.crop.circle.fill") {
//					Button("Log Out") {
//						UserDefaults.standard.removeObject(forKey: "token")
//						authentication.updateValidation(success: false)
//					}
//				}
//			} else {
//				// Fallback on earlier versions
//			}
		}
	}
}

#Preview {
	ContentView()
		.modelContainer(for: Item.self, inMemory: true)
}
