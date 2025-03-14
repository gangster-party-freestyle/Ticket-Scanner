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
	@Environment(Medusa.self) private var medusa
	
	@State var viewModel = PointOfSaleViewModel()
	
	var body: some View {
		NavigationStack {
			ScrollView{
				LazyVGrid(columns: viewModel.adaptiveColumn, spacing: 20) {
					ForEach(viewModel.viewConfig) { product in
						VStack(alignment: .leading, spacing: -8) {
							Text(product.product.title ?? "No Title")
								.font(.caption2)
								.textCase(.uppercase)
								.foregroundStyle(Color.gray)
								.padding()
							VStack(alignment: .leading, spacing: 0) {
								AsyncImage(url: URL(string: product.product.images?.first?.url ?? "")){ image in
									image.resizable()
										.scaledToFill()
								} placeholder: {
									Color.red
								}
								.frame(height: 128)
								.clipShape(.rect(cornerRadius: 0))
								
								VStack(alignment: .leading, spacing: 4) {
									Text("Nothing Selected")
										.monospaced()
									
									Button {
										viewModel.openProduct = product
									} label: {
										Text("Select Variant")
									}
									.buttonStyle(.bordered)
								}
								.padding()
							}
							//							.frame(width: .infinity)
							.background(Color.gray.quinary)
							.clipShape(.rect(cornerRadius: 12))
						}
					}
					Button {
						viewModel.itemSelectOpen = true
					} label: {
						Text("Add new item")
					}
				}
			}
			.sheet(isPresented: $viewModel.itemSelectOpen) {
				Form {
					ForEach(medusa.products) { product in
						HStack {
							Text(product.title ?? "No Title")
							Spacer()
							Image(systemName: viewConfigHasProduct(viewConfig: viewModel.viewConfig, product: product) ? "checkmark.circle.fill" : "circle")
						}
						.onTapGesture {
							if viewConfigHasProduct(viewConfig: viewModel.viewConfig, product: product) {
								if let index = viewModel.viewConfig.firstIndex(where: { $0.product.id == product.id }) {
									viewModel.viewConfig.remove(at: index)
								}
								return
							}
							viewModel.viewConfig.append(ViewConfig(product: product, selectedVariants: []))
						}
					}
				}
				.presentationDetents([.medium, .large])
				.presentationDragIndicator(.visible)
			}
			.sheet(item: $viewModel.openProduct, content: { product in
				SelectVariants()
					.environment(viewModel)
			})
			.padding()
			.navigationTitle("Point of Sale")
			.onAppear {
				medusa.getProducts()
			}
			.background(.background.secondary)
		}
	}
}

#Preview {
	@Previewable @State var medusa = Medusa(user: User(), server: Server(), products: MockData().products)
	PointOfSale()
		.environment(medusa)
}
