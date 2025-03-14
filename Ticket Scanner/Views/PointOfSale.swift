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

func parseDecimal(from text: String) -> Double? {
		let formatter = NumberFormatter()
		formatter.numberStyle = .decimal
		formatter.locale = Locale.current
		return formatter.number(from: text)?.doubleValue
	}

struct PointOfSale: View {
	
	@State var numberOfTickets = 1
	
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
	
	
	let lineOffset = 14
	
	var body: some View {
		NavigationStack {
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
//							.overlay {
//								Path { path in
//									path.move(to: CGPoint(x: text.count * lineOffset * -1 + 65, y: 26))
//									path.addLine(to: CGPoint(x: (text.count + 1) * -1 * lineOffset + 65, y: 26))
//								}
//								.stroke(.primary, lineWidth: 2)
//							}
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
//			.background(Color(UIColor.secondarySystemBackground))
//			.toolbarBackground(.black, for: .navigationBar)
			
			
			
			//			VStack (alignment: .leading) {
			//				Spacer()
			//				VStack {
			//					Text("№ Tickets")
			//						.monospaced()
			//						.fontWeight(.semibold)
			//						.font(.system(size: 16))
			//
			//					HStack {
			//						Spacer()
			//						Button {
			//							withAnimation {
			//								numberOfTickets -= 1
			//							}
			//						} label: {
			//							Image(systemName: "minus")
			//								.fontWeight(.heavy)
			//								.font(.system(size: 40))
			//								.tint(.primary)
			//						}
			//
			//						.disabled(numberOfTickets <= 1)
			//
			//						Spacer()
			//
			//						Text(String(numberOfTickets))
			//							.monospaced()
			//							.fontWeight(.heavy)
			//							.font(.system(size: 128))
			//							.contentTransition(
			//								.numericText(
			//									value: Double(numberOfTickets)
			//								)
			//							)
			//							.animation(
			//								.linear(duration: 0.3),
			//								value: numberOfTickets
			//							)
			//
			//						Spacer()
			//						Button {
			//							withAnimation {
			//								numberOfTickets += 1
			//							}
			//						} label: {
			//							Image(systemName: "plus")
			//								.fontWeight(.heavy)
			//								.font(.system(size: 40))
			//								.tint(.primary)
			//						}
			//						Spacer()
			//					}
			//				}
			//				Spacer()
			//				VStack(alignment: .leading) {
			//					Text("Payment Method")
			//					HStack {
			//						Button {
			//
			//						} label: {
			//							Label("Cash", systemImage: "banknote")
			//						}
			//						.buttonStyle(LargeButton())
			//
			//						Button {
			//
			//						} label: {
			//							Label("Credit Card", systemImage: "creditcard")
			//						}
			//						.buttonStyle(LargeButton())
			//
			//
			//					}
			//				}
			//
			//			}
			.sensoryFeedback(.increase, trigger: numberOfTickets)
			.navigationTitle("Point of Sale")
		}
	}
}

#Preview {
	PointOfSale()
}
