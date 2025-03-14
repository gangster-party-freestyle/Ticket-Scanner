//
//  Cash.swift
//  Ticket Scanner
//
//  Created by Eric Wätke on 14.03.25.
//

import SwiftUI

func parseDecimal(from text: String) -> Double? {
	let formatter = NumberFormatter()
	formatter.numberStyle = .decimal
	formatter.locale = Locale.current
	return formatter.number(from: text)?.doubleValue
}

struct Cash: View {
	let price = 120.0
	@State var text = ""
//	@State var change = 0.0
	
	var change: Double {
		let received = parseDecimal(from: text)
		
		if received == nil || received == 0 {
			return 0.0
		} else {
			return (price - (received ?? 0)) * -1
		}
	}
	
    var body: some View {
		HStack(spacing: 0) {
			VStack(spacing: 8) {
				Text("Price")
					.font(.system(size: 13))
					.monospaced()
					.textCase(.uppercase)
				Text("120,00 €")
					.monospaced()
					.multilineTextAlignment(.center)
					.font(.system(size: 17))
			}
			.frame(width: 85)
			.padding()
			.background(Color(UIColor.secondarySystemBackground))
			.clipShape(
				UnevenRoundedRectangle(cornerRadii: .init(topLeading: 10, bottomLeading: 10))
			)
			
			VStack {
				Text("Change")
					.monospaced()
					.textCase(.uppercase)
				HStack {
					TextField("0,00", text: $text)
						.monospaced()
						.font(.system(size: 22))
						.multilineTextAlignment(.trailing)
						.keyboardType(.decimalPad)
						.keyboardShortcut(.defaultAction)
						.tint(.secondary)
					Text("€")
						.monospaced()
						.font(.system(size: 22))
				}
			}
			.containerRelativeFrame(.horizontal) { length, axis in
				return length / 4
			}
			.padding()
			.background(Color(UIColor.secondarySystemBackground))
			.clipShape(RoundedRectangle(cornerRadius: 10))
			.shadow(radius: 20)
			.zIndex(1)
			
			
			VStack(spacing: 8) {
				Text("Change")
					.font(.system(size: 13))
					.monospaced()
					.textCase(.uppercase)
				Text(change == 0 ? "--" : "\(change, specifier: "%.2f")")
					.monospaced()
					.font(.system(size: 17))
					.contentTransition(
						.numericText(
							value: change
						)
					)
					.animation(
						.linear(duration: 0.3),
						value: change
					)
					.lineLimit(1)
			}
			.frame(width: 85)
			.padding()
			.background(Color(UIColor.secondarySystemBackground))
			.clipShape(
				UnevenRoundedRectangle(cornerRadii: .init(bottomTrailing: 10, topTrailing: 10))
			)
			
			
		}
		.containerRelativeFrame(.horizontal)
		.containerRelativeFrame(.vertical)
		.padding()
    }
}

#Preview {
    Cash()
}
