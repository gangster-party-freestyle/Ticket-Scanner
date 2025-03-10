//
//  PointOfSale.swift
//  Ticket Scanner
//
//  Created by Eric Wätke on 08.03.25.
//

import SwiftUI

struct LargeButton: ButtonStyle {
	func makeBody(configuration: Configuration) -> some View {
		configuration.label
			.padding()
			.background(.blue.opacity(0.15))
			.foregroundStyle(.blue)
			.clipShape(.buttonBorder)
			.opacity(configuration.isPressed ? 0.4 : 1)
	}
}

struct PointOfSale: View {
	
	@State var numberOfTickets = 1
	
	var body: some View {
		NavigationStack {
			VStack (alignment: .leading) {
				Spacer()
				VStack {
					Text("№ Tickets")
						.monospaced()
						.fontWeight(.semibold)
						.font(.system(size: 16))
					
					HStack {
						Spacer()
						Button {
							numberOfTickets -= 1
						} label: {
							Image(systemName: "minus")
								.fontWeight(.heavy)
								.font(.system(size: 40))
								.tint(.black)
						}
						
						.disabled(numberOfTickets <= 1)
						
						Spacer()
						
						Text(String(numberOfTickets))
							.monospaced()
							.fontWeight(.heavy)
							.font(.system(size: 128))
							.contentTransition(
								.numericText(
									value: Double(numberOfTickets)
								)
							)
							.animation(
								.linear(duration: 0.3),
								value: numberOfTickets
							)
						
						Spacer()
						Button {
							numberOfTickets += 1
						} label: {
							Image(systemName: "plus")
								.fontWeight(.heavy)
								.font(.system(size: 40))
								.tint(.black)
						}
						Spacer()
					}
				}
				Spacer()
				VStack(alignment: .leading) {
					Text("Payment Method")
					HStack {
						Button {
							
						} label: {
							Label("Cash", systemImage: "banknote")
						}
						.buttonStyle(LargeButton())
						
						Button {
							
						} label: {
							Label("Credit Card", systemImage: "creditcard")
						}
						.buttonStyle(LargeButton())
						
						
					}
				}
				
			}
			.padding()
			.sensoryFeedback(.increase, trigger: numberOfTickets)
			.navigationTitle("Point of Sale")
		}
	}
}

#Preview {
	PointOfSale()
}
