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
			Text("TODO: Everything")
			.navigationTitle("Scan Tickets")
		}
    }
}

#Preview {
	@Previewable @State var medusa = Medusa()
    ScanView()
		.environment(medusa)
}
