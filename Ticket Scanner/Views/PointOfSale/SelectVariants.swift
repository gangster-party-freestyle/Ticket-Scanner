//
//  SelectVariants.swift
//  Ticket Scanner
//
//  Created by Eric Wätke on 14.03.25.
//

import SwiftUI

struct SelectVariants: View {
	@Environment(PointOfSaleViewModel.self) private var viewModel
	
	func getCurrent(variantId: String) -> Int {
		return viewModel.getVariantAmount(variantId: variantId)
	}
	
    var body: some View {
		if let variants = viewModel.openProduct?.product.variants {
			Form {
				ForEach(variants) { variant in
					HStack {
						Text(variant.title ?? "No Title")
						Spacer()
						Text("\(getCurrent(variantId: variant.id ?? ""))")
						Stepper {
							
						} onIncrement: {
							if let variantId = variant.id {
								viewModel.addProductToCard(variantId: variantId)
							}
						} onDecrement: {
							if let variantId = variant.id {
								viewModel.addProductToCard(variantId: variantId)
							}
						}
						.frame(width: 75)
					}
				}
			}
			.presentationDetents([.medium, .large])
			.presentationDragIndicator(.visible)
			// Add an ID to force refresh when openProduct changes
			.id(viewModel.openProduct?.selectedVariants.description)
		}
    }
}

#Preview {
	@Previewable @State var viewModel = PointOfSaleViewModel(viewConfig: [ViewConfig(product: MockData().products.first!, selectedVariants: [])], openProduct: ViewConfig(product: MockData().products.first!, selectedVariants: []))
	
	SelectVariants()
		.environment(viewModel)
}
