//
//  ScanView.swift
//  Ticket Scanner
//
//  Created by Eric Wätke on 08.03.25.
//

import SwiftUI

struct ScanView: View {
	@Environment(Medusa.self) private var medusa
		
    var body: some View {
		NavigationStack {
			List(medusa.products) {
				Text($0.title ?? "No Title")
			}
			.onAppear {
				medusa.getProducts()
			}
			.navigationTitle("Scan Tickets")
		}
    }
}

#Preview {
	@Previewable @State var medusa = Medusa()
    ScanView()
		.environment(medusa)
}
