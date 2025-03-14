//
//  PointOfSaleViewModel.swift
//  Ticket Scanner
//
//  Created by Eric Wätke on 14.03.25.
//

import SwiftUI
import Observation

struct SelectedVariant {
	var variant: String
	var amount: Int
}

struct ViewConfig: Identifiable {
	var id: String
	var product: Products
	var selectedVariants: [SelectedVariant]
	
	init(product: Products, selectedVariants: [SelectedVariant]) {
		self.id = product.id
		self.product = product
		self.selectedVariants = selectedVariants
	}
}

func viewConfigHasProduct(viewConfig: [ViewConfig], product: Products) -> Bool {
	for config in viewConfig {
		if config.product.id == product.id {
			return true
		}
	}
	return false
}

func getVariantById(viewConfig: ViewConfig, id: String) -> SelectedVariant? {
	return viewConfig.selectedVariants.first(where: { $0.variant == id })
}

@Observable
class PointOfSaleViewModel {
	var numberOfTickets = 1
	
	let adaptiveColumn = [
		GridItem(.adaptive(minimum: 150))
	]
	
	//	@State var basket = nil
	var viewConfig: [ViewConfig] = []
	
	var openProduct: ViewConfig? = nil
	var itemSelectOpen: Bool = false
	
	func addProductToCard(variantId: String) -> Void {
		guard let productIndex = self.viewConfig.firstIndex(where: { $0.product.id == self.openProduct?.id }) else {
			print("Couldnt’t get product")
			return
		}
		
		print("---------")
		print(variantId)
		print(self.viewConfig[productIndex].selectedVariants)
		if let existingVariantIndex = self.viewConfig[productIndex].selectedVariants.firstIndex(where: { $0.variant == variantId }) {
			print("Adding plus one to existingVariant")
			self.viewConfig[productIndex].selectedVariants[existingVariantIndex].amount += 1
		} else {
			print("Adding new Variant")
			self.viewConfig[productIndex].selectedVariants.append(SelectedVariant(variant: variantId, amount: 1))
			print(self.viewConfig[productIndex].selectedVariants)
		}
		
		// Update openProduct to ensure UI refreshes
		self.openProduct = self.viewConfig[productIndex]
	}
	
	// Helper method to get variant amount directly from viewConfig
	func getVariantAmount(variantId: String) -> Int {
		guard let productId = openProduct?.id,
			  let productIndex = viewConfig.firstIndex(where: { $0.id == productId }),
			  let variantIndex = viewConfig[productIndex].selectedVariants.firstIndex(where: { $0.variant == variantId }) else {
			return 0
		}
		
		return viewConfig[productIndex].selectedVariants[variantIndex].amount
	}
	
	init() {
		
	}
	
	init(viewConfig: [ViewConfig], openProduct: ViewConfig?) {
		self.viewConfig = viewConfig
		self.openProduct = openProduct
	}
}
