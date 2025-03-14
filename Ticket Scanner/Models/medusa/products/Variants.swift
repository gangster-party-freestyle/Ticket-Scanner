/* 
Copyright (c) 2025 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct Variants : Codable {
	let id : String?
	let title : String?
	let sku : String?
	let barcode : String?
	let ean : String?
	let upc : String?
	let allow_backorder : Bool?
	let manage_inventory : Bool?
	let hs_code : String?
	let origin_country : String?
	let mid_code : String?
	let material : String?
	let weight : String?
	let length : String?
	let height : String?
	let width : String?
	let metadata : String?
	let variant_rank : Int?
	let product_id : String?
	let created_at : String?
	let updated_at : String?
	let deleted_at : String?
	let options : [Options]?
	let prices : [Prices]?

	enum CodingKeys: String, CodingKey {

		case id = "id"
		case title = "title"
		case sku = "sku"
		case barcode = "barcode"
		case ean = "ean"
		case upc = "upc"
		case allow_backorder = "allow_backorder"
		case manage_inventory = "manage_inventory"
		case hs_code = "hs_code"
		case origin_country = "origin_country"
		case mid_code = "mid_code"
		case material = "material"
		case weight = "weight"
		case length = "length"
		case height = "height"
		case width = "width"
		case metadata = "metadata"
		case variant_rank = "variant_rank"
		case product_id = "product_id"
		case created_at = "created_at"
		case updated_at = "updated_at"
		case deleted_at = "deleted_at"
		case options = "options"
		case prices = "prices"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		id = try values.decodeIfPresent(String.self, forKey: .id)
		title = try values.decodeIfPresent(String.self, forKey: .title)
		sku = try values.decodeIfPresent(String.self, forKey: .sku)
		barcode = try values.decodeIfPresent(String.self, forKey: .barcode)
		ean = try values.decodeIfPresent(String.self, forKey: .ean)
		upc = try values.decodeIfPresent(String.self, forKey: .upc)
		allow_backorder = try values.decodeIfPresent(Bool.self, forKey: .allow_backorder)
		manage_inventory = try values.decodeIfPresent(Bool.self, forKey: .manage_inventory)
		hs_code = try values.decodeIfPresent(String.self, forKey: .hs_code)
		origin_country = try values.decodeIfPresent(String.self, forKey: .origin_country)
		mid_code = try values.decodeIfPresent(String.self, forKey: .mid_code)
		material = try values.decodeIfPresent(String.self, forKey: .material)
		weight = try values.decodeIfPresent(String.self, forKey: .weight)
		length = try values.decodeIfPresent(String.self, forKey: .length)
		height = try values.decodeIfPresent(String.self, forKey: .height)
		width = try values.decodeIfPresent(String.self, forKey: .width)
		metadata = try values.decodeIfPresent(String.self, forKey: .metadata)
		variant_rank = try values.decodeIfPresent(Int.self, forKey: .variant_rank)
		product_id = try values.decodeIfPresent(String.self, forKey: .product_id)
		created_at = try values.decodeIfPresent(String.self, forKey: .created_at)
		updated_at = try values.decodeIfPresent(String.self, forKey: .updated_at)
		deleted_at = try values.decodeIfPresent(String.self, forKey: .deleted_at)
		options = try values.decodeIfPresent([Options].self, forKey: .options)
		prices = try values.decodeIfPresent([Prices].self, forKey: .prices)
	}

}