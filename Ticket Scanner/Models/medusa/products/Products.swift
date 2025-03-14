/* 
Copyright (c) 2025 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct Products : Codable, Identifiable {
	let id : String
	let title : String?
	let subtitle : String?
	let status : String?
	let external_id : String?
	let description : String?
	let handle : String?
	let is_giftcard : Bool?
	let discountable : Bool?
	let thumbnail : String?
	let collection_id : String?
	let type_id : String?
	let weight : String?
	let length : String?
	let height : String?
	let width : String?
	let hs_code : String?
	let origin_country : String?
	let mid_code : String?
	let material : String?
	let created_at : String?
	let updated_at : String?
	let deleted_at : String?
	let metadata : String?
	let type : String?
	let collection : String?
	let options : [Options]?
	let tags : [String]?
	let images : [Images]?
	let variants : [Variants]?
	let sales_channels : [Sales_channels]?

	enum CodingKeys: String, CodingKey {

		case id = "id"
		case title = "title"
		case subtitle = "subtitle"
		case status = "status"
		case external_id = "external_id"
		case description = "description"
		case handle = "handle"
		case is_giftcard = "is_giftcard"
		case discountable = "discountable"
		case thumbnail = "thumbnail"
		case collection_id = "collection_id"
		case type_id = "type_id"
		case weight = "weight"
		case length = "length"
		case height = "height"
		case width = "width"
		case hs_code = "hs_code"
		case origin_country = "origin_country"
		case mid_code = "mid_code"
		case material = "material"
		case created_at = "created_at"
		case updated_at = "updated_at"
		case deleted_at = "deleted_at"
		case metadata = "metadata"
		case type = "type"
		case collection = "collection"
		case options = "options"
		case tags = "tags"
		case images = "images"
		case variants = "variants"
		case sales_channels = "sales_channels"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		id = try values.decodeIfPresent(String.self, forKey: .id) ?? UUID().uuidString
		title = try values.decodeIfPresent(String.self, forKey: .title)
		subtitle = try values.decodeIfPresent(String.self, forKey: .subtitle)
		status = try values.decodeIfPresent(String.self, forKey: .status)
		external_id = try values.decodeIfPresent(String.self, forKey: .external_id)
		description = try values.decodeIfPresent(String.self, forKey: .description)
		handle = try values.decodeIfPresent(String.self, forKey: .handle)
		is_giftcard = try values.decodeIfPresent(Bool.self, forKey: .is_giftcard)
		discountable = try values.decodeIfPresent(Bool.self, forKey: .discountable)
		thumbnail = try values.decodeIfPresent(String.self, forKey: .thumbnail)
		collection_id = try values.decodeIfPresent(String.self, forKey: .collection_id)
		type_id = try values.decodeIfPresent(String.self, forKey: .type_id)
		weight = try values.decodeIfPresent(String.self, forKey: .weight)
		length = try values.decodeIfPresent(String.self, forKey: .length)
		height = try values.decodeIfPresent(String.self, forKey: .height)
		width = try values.decodeIfPresent(String.self, forKey: .width)
		hs_code = try values.decodeIfPresent(String.self, forKey: .hs_code)
		origin_country = try values.decodeIfPresent(String.self, forKey: .origin_country)
		mid_code = try values.decodeIfPresent(String.self, forKey: .mid_code)
		material = try values.decodeIfPresent(String.self, forKey: .material)
		created_at = try values.decodeIfPresent(String.self, forKey: .created_at)
		updated_at = try values.decodeIfPresent(String.self, forKey: .updated_at)
		deleted_at = try values.decodeIfPresent(String.self, forKey: .deleted_at)
		metadata = try values.decodeIfPresent(String.self, forKey: .metadata)
		type = try values.decodeIfPresent(String.self, forKey: .type)
		collection = try values.decodeIfPresent(String.self, forKey: .collection)
		options = try values.decodeIfPresent([Options].self, forKey: .options)
		tags = try values.decodeIfPresent([String].self, forKey: .tags)
		images = try values.decodeIfPresent([Images].self, forKey: .images)
		variants = try values.decodeIfPresent([Variants].self, forKey: .variants)
		sales_channels = try values.decodeIfPresent([Sales_channels].self, forKey: .sales_channels)
	}

}
