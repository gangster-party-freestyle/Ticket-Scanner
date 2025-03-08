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
		NavigationSplitView {
			List {
				ForEach(items) { item in
					NavigationLink {
						Text("Item at \(item.timestamp, format: Date.FormatStyle(date: .numeric, time: .standard))")
					} label: {
						Text(item.timestamp, format: Date.FormatStyle(date: .numeric, time: .standard))
					}
				}
				.onDelete(perform: deleteItems)
			}
			.toolbar {
				ToolbarItem(placement: .topBarTrailing) {
					Button("Log Out") {
						UserDefaults.standard.removeObject(forKey: "token")
						authentication.updateValidation(success: false)
					}
				}
				ToolbarItem(placement: .navigationBarTrailing) {
					EditButton()
				}
				ToolbarItem {
					Button(action: addItem) {
						Label("Add Item", systemImage: "plus")
					}
				}
			}
		} detail: {
			Text("Select an item")
		}
	}

	private func addItem() {
		withAnimation {
			let newItem = Item(timestamp: Date())
			modelContext.insert(newItem)
		}
	}

	private func deleteItems(offsets: IndexSet) {
		withAnimation {
			for index in offsets {
				modelContext.delete(items[index])
			}
		}
	}
}

#Preview {
	ContentView()
		.modelContainer(for: Item.self, inMemory: true)
}
