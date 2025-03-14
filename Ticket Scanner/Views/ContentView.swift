//
//  ContentView.swift
//  Ticket Scanner
//
//  Created by Eric Wätke on 08.03.25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
	@Environment(Medusa.self) private var medusa
	@Environment(\.modelContext) private var modelContext

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
		}
	}
}

#Preview {
	@Previewable @State var medusa = Medusa()
	ContentView()
		.modelContainer(for: Item.self, inMemory: true)
		.environment(medusa)
}
