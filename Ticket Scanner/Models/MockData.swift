//
//  MockData.swift
//  Ticket Scanner
//
//  Created by Eric Wätke on 14.03.25.
//

import Foundation

let JSON = """
[
	{
	  "id": "prod_01JDFNTMK79DFBS9FKYG1JEEZ7",
	  "title": "Medusa Shorts",
	  "subtitle": null,
	  "status": "published",
	  "external_id": null,
	  "description": "Reimagine the feeling of classic shorts. With our cotton shorts, everyday essentials no longer have to be ordinary.",
	  "handle": "shorts",
	  "is_giftcard": false,
	  "discountable": true,
	  "thumbnail": "https://medusa-public-images.s3.eu-west-1.amazonaws.com/shorts-vintage-front.png",
	  "collection_id": null,
	  "type_id": null,
	  "weight": "400",
	  "length": null,
	  "height": null,
	  "width": null,
	  "hs_code": null,
	  "origin_country": null,
	  "mid_code": null,
	  "material": null,
	  "created_at": "2024-11-24T18:09:31.744Z",
	  "updated_at": "2024-11-24T18:09:31.744Z",
	  "deleted_at": null,
	  "metadata": null,
	  "type": null,
	  "collection": null,
	  "options": [
		{
		  "id": "opt_01JDFNTMM3AJKB6JZ8YMJDWJ5P",
		  "title": "Size",
		  "metadata": null,
		  "product_id": "prod_01JDFNTMK79DFBS9FKYG1JEEZ7",
		  "created_at": "2024-11-24T18:09:31.744Z",
		  "updated_at": "2024-11-24T18:09:31.744Z",
		  "deleted_at": null,
		  "values": [
			{
			  "id": "optval_01JDFNTMMBMC8SAY2H1KYQ5C5G",
			  "value": "S",
			  "metadata": null,
			  "option_id": "opt_01JDFNTMM3AJKB6JZ8YMJDWJ5P",
			  "created_at": "2024-11-24T18:09:31.744Z",
			  "updated_at": "2024-11-24T18:09:31.744Z",
			  "deleted_at": null
			},
			{
			  "id": "optval_01JDFNTMMCFJ9EFXQVPQEAQGW4",
			  "value": "M",
			  "metadata": null,
			  "option_id": "opt_01JDFNTMM3AJKB6JZ8YMJDWJ5P",
			  "created_at": "2024-11-24T18:09:31.744Z",
			  "updated_at": "2024-11-24T18:09:31.744Z",
			  "deleted_at": null
			},
			{
			  "id": "optval_01JDFNTMMC2CQBQMWJWYSW5DJZ",
			  "value": "L",
			  "metadata": null,
			  "option_id": "opt_01JDFNTMM3AJKB6JZ8YMJDWJ5P",
			  "created_at": "2024-11-24T18:09:31.744Z",
			  "updated_at": "2024-11-24T18:09:31.744Z",
			  "deleted_at": null
			},
			{
			  "id": "optval_01JDFNTMMC5N76D4WBXQV2G0GC",
			  "value": "XL",
			  "metadata": null,
			  "option_id": "opt_01JDFNTMM3AJKB6JZ8YMJDWJ5P",
			  "created_at": "2024-11-24T18:09:31.744Z",
			  "updated_at": "2024-11-24T18:09:31.744Z",
			  "deleted_at": null
			}
		  ]
		}
	  ],
	  "tags": [],
	  "images": [
		{
		  "id": "img_01JDFNTMKDJ8XQBWQPSNKPF75N",
		  "url": "https://medusa-public-images.s3.eu-west-1.amazonaws.com/shorts-vintage-front.png",
		  "metadata": null,
		  "rank": 0,
		  "product_id": "prod_01JDFNTMK79DFBS9FKYG1JEEZ7",
		  "created_at": "2024-11-24T18:09:31.744Z",
		  "updated_at": "2024-11-24T18:09:31.744Z",
		  "deleted_at": null
		},
		{
		  "id": "img_01JDFNTMKDZK51JPH4WTZ2Y11R",
		  "url": "https://medusa-public-images.s3.eu-west-1.amazonaws.com/shorts-vintage-back.png",
		  "metadata": null,
		  "rank": 1,
		  "product_id": "prod_01JDFNTMK79DFBS9FKYG1JEEZ7",
		  "created_at": "2024-11-24T18:09:31.744Z",
		  "updated_at": "2024-11-24T18:09:31.744Z",
		  "deleted_at": null
		}
	  ],
	  "variants": [
		{
		  "id": "variant_01JDFNTMNQYQRK1NA709R6PAKE",
		  "title": "S",
		  "sku": "SHORTS-S",
		  "barcode": null,
		  "ean": null,
		  "upc": null,
		  "allow_backorder": false,
		  "manage_inventory": true,
		  "hs_code": null,
		  "origin_country": null,
		  "mid_code": null,
		  "material": null,
		  "weight": null,
		  "length": null,
		  "height": null,
		  "width": null,
		  "metadata": null,
		  "variant_rank": 0,
		  "product_id": "prod_01JDFNTMK79DFBS9FKYG1JEEZ7",
		  "created_at": "2024-11-24T18:09:31.832Z",
		  "updated_at": "2024-11-24T18:09:31.832Z",
		  "deleted_at": null,
		  "options": [
			{
			  "id": "optval_01JDFNTMMBMC8SAY2H1KYQ5C5G",
			  "value": "S",
			  "metadata": null,
			  "option_id": "opt_01JDFNTMM3AJKB6JZ8YMJDWJ5P",
			  "option": {
				"id": "opt_01JDFNTMM3AJKB6JZ8YMJDWJ5P",
				"title": "Size",
				"metadata": null,
				"product_id": "prod_01JDFNTMK79DFBS9FKYG1JEEZ7",
				"created_at": "2024-11-24T18:09:31.744Z",
				"updated_at": "2024-11-24T18:09:31.744Z",
				"deleted_at": null
			  },
			  "created_at": "2024-11-24T18:09:31.744Z",
			  "updated_at": "2024-11-24T18:09:31.744Z",
			  "deleted_at": null
			}
		  ],
		  "prices": [
			{
			  "id": "price_01JDFNTMTD7YKGE0C1A3T3K2X7",
			  "amount": 10,
			  "currency_code": "eur",
			  "min_quantity": null,
			  "max_quantity": null,
			  "variant_id": "variant_01JDFNTMNQYQRK1NA709R6PAKE",
			  "created_at": "2024-11-24T18:09:31.983Z",
			  "updated_at": "2024-11-24T18:09:31.983Z",
			  "rules": {}
			},
			{
			  "id": "price_01JDFNTMTEMA2Z6PXTN0ZTW7BP",
			  "amount": 15,
			  "currency_code": "usd",
			  "min_quantity": null,
			  "max_quantity": null,
			  "variant_id": "variant_01JDFNTMNQYQRK1NA709R6PAKE",
			  "created_at": "2024-11-24T18:09:31.983Z",
			  "updated_at": "2024-11-24T18:09:31.983Z",
			  "rules": {}
			}
		  ]
		},
		{
		  "id": "variant_01JDFNTMNQ17Z5REEQN5RQ9YXG",
		  "title": "M",
		  "sku": "SHORTS-M",
		  "barcode": null,
		  "ean": null,
		  "upc": null,
		  "allow_backorder": false,
		  "manage_inventory": true,
		  "hs_code": null,
		  "origin_country": null,
		  "mid_code": null,
		  "material": null,
		  "weight": null,
		  "length": null,
		  "height": null,
		  "width": null,
		  "metadata": null,
		  "variant_rank": 0,
		  "product_id": "prod_01JDFNTMK79DFBS9FKYG1JEEZ7",
		  "created_at": "2024-11-24T18:09:31.832Z",
		  "updated_at": "2024-11-24T18:09:31.832Z",
		  "deleted_at": null,
		  "options": [
			{
			  "id": "optval_01JDFNTMMCFJ9EFXQVPQEAQGW4",
			  "value": "M",
			  "metadata": null,
			  "option_id": "opt_01JDFNTMM3AJKB6JZ8YMJDWJ5P",
			  "option": {
				"id": "opt_01JDFNTMM3AJKB6JZ8YMJDWJ5P",
				"title": "Size",
				"metadata": null,
				"product_id": "prod_01JDFNTMK79DFBS9FKYG1JEEZ7",
				"created_at": "2024-11-24T18:09:31.744Z",
				"updated_at": "2024-11-24T18:09:31.744Z",
				"deleted_at": null
			  },
			  "created_at": "2024-11-24T18:09:31.744Z",
			  "updated_at": "2024-11-24T18:09:31.744Z",
			  "deleted_at": null
			}
		  ],
		  "prices": [
			{
			  "id": "price_01JDFNTMTEYV6TET7851B6HJBJ",
			  "amount": 10,
			  "currency_code": "eur",
			  "min_quantity": null,
			  "max_quantity": null,
			  "variant_id": "variant_01JDFNTMNQ17Z5REEQN5RQ9YXG",
			  "created_at": "2024-11-24T18:09:31.983Z",
			  "updated_at": "2024-11-24T18:09:31.983Z",
			  "rules": {}
			},
			{
			  "id": "price_01JDFNTMTEYFSKD220EQMRQVGB",
			  "amount": 15,
			  "currency_code": "usd",
			  "min_quantity": null,
			  "max_quantity": null,
			  "variant_id": "variant_01JDFNTMNQ17Z5REEQN5RQ9YXG",
			  "created_at": "2024-11-24T18:09:31.983Z",
			  "updated_at": "2024-11-24T18:09:31.983Z",
			  "rules": {}
			}
		  ]
		},
		{
		  "id": "variant_01JDFNTMNQ95RSBGA0RVCA0TCQ",
		  "title": "L",
		  "sku": "SHORTS-L",
		  "barcode": null,
		  "ean": null,
		  "upc": null,
		  "allow_backorder": false,
		  "manage_inventory": true,
		  "hs_code": null,
		  "origin_country": null,
		  "mid_code": null,
		  "material": null,
		  "weight": null,
		  "length": null,
		  "height": null,
		  "width": null,
		  "metadata": null,
		  "variant_rank": 0,
		  "product_id": "prod_01JDFNTMK79DFBS9FKYG1JEEZ7",
		  "created_at": "2024-11-24T18:09:31.832Z",
		  "updated_at": "2024-11-24T18:09:31.832Z",
		  "deleted_at": null,
		  "options": [
			{
			  "id": "optval_01JDFNTMMC2CQBQMWJWYSW5DJZ",
			  "value": "L",
			  "metadata": null,
			  "option_id": "opt_01JDFNTMM3AJKB6JZ8YMJDWJ5P",
			  "option": {
				"id": "opt_01JDFNTMM3AJKB6JZ8YMJDWJ5P",
				"title": "Size",
				"metadata": null,
				"product_id": "prod_01JDFNTMK79DFBS9FKYG1JEEZ7",
				"created_at": "2024-11-24T18:09:31.744Z",
				"updated_at": "2024-11-24T18:09:31.744Z",
				"deleted_at": null
			  },
			  "created_at": "2024-11-24T18:09:31.744Z",
			  "updated_at": "2024-11-24T18:09:31.744Z",
			  "deleted_at": null
			}
		  ],
		  "prices": [
			{
			  "id": "price_01JDFNTMTEJN1B37ZHNQV3ZFW2",
			  "amount": 10,
			  "currency_code": "eur",
			  "min_quantity": null,
			  "max_quantity": null,
			  "variant_id": "variant_01JDFNTMNQ95RSBGA0RVCA0TCQ",
			  "created_at": "2024-11-24T18:09:31.983Z",
			  "updated_at": "2024-11-24T18:09:31.983Z",
			  "rules": {}
			},
			{
			  "id": "price_01JDFNTMTEESFRC4G4G6REHJBM",
			  "amount": 15,
			  "currency_code": "usd",
			  "min_quantity": null,
			  "max_quantity": null,
			  "variant_id": "variant_01JDFNTMNQ95RSBGA0RVCA0TCQ",
			  "created_at": "2024-11-24T18:09:31.983Z",
			  "updated_at": "2024-11-24T18:09:31.983Z",
			  "rules": {}
			}
		  ]
		},
		{
		  "id": "variant_01JDFNTMNQPASF1QXGC407XB89",
		  "title": "XL",
		  "sku": "SHORTS-XL",
		  "barcode": null,
		  "ean": null,
		  "upc": null,
		  "allow_backorder": false,
		  "manage_inventory": true,
		  "hs_code": null,
		  "origin_country": null,
		  "mid_code": null,
		  "material": null,
		  "weight": null,
		  "length": null,
		  "height": null,
		  "width": null,
		  "metadata": null,
		  "variant_rank": 0,
		  "product_id": "prod_01JDFNTMK79DFBS9FKYG1JEEZ7",
		  "created_at": "2024-11-24T18:09:31.832Z",
		  "updated_at": "2024-11-24T18:09:31.832Z",
		  "deleted_at": null,
		  "options": [
			{
			  "id": "optval_01JDFNTMMC5N76D4WBXQV2G0GC",
			  "value": "XL",
			  "metadata": null,
			  "option_id": "opt_01JDFNTMM3AJKB6JZ8YMJDWJ5P",
			  "option": {
				"id": "opt_01JDFNTMM3AJKB6JZ8YMJDWJ5P",
				"title": "Size",
				"metadata": null,
				"product_id": "prod_01JDFNTMK79DFBS9FKYG1JEEZ7",
				"created_at": "2024-11-24T18:09:31.744Z",
				"updated_at": "2024-11-24T18:09:31.744Z",
				"deleted_at": null
			  },
			  "created_at": "2024-11-24T18:09:31.744Z",
			  "updated_at": "2024-11-24T18:09:31.744Z",
			  "deleted_at": null
			}
		  ],
		  "prices": [
			{
			  "id": "price_01JDFNTMTE2FAEV5RPN95T81V7",
			  "amount": 15,
			  "currency_code": "usd",
			  "min_quantity": null,
			  "max_quantity": null,
			  "variant_id": "variant_01JDFNTMNQPASF1QXGC407XB89",
			  "created_at": "2024-11-24T18:09:31.983Z",
			  "updated_at": "2024-11-24T18:09:31.983Z",
			  "rules": {}
			},
			{
			  "id": "price_01JDFNTMTE90XA9DZX87GEG54Z",
			  "amount": 10,
			  "currency_code": "eur",
			  "min_quantity": null,
			  "max_quantity": null,
			  "variant_id": "variant_01JDFNTMNQPASF1QXGC407XB89",
			  "created_at": "2024-11-24T18:09:31.983Z",
			  "updated_at": "2024-11-24T18:09:31.983Z",
			  "rules": {}
			}
		  ]
		}
	  ],
	  "sales_channels": [
		{
		  "id": "sc_01JDFNTMA9FSSVQRV6T2HK6X3S",
		  "name": "Default Sales Channel",
		  "description": "Created by Medusa",
		  "is_disabled": false,
		  "metadata": null,
		  "created_at": "2024-11-24T18:09:31.465Z",
		  "updated_at": "2024-11-24T18:09:31.465Z",
		  "deleted_at": null
		}
	  ]
	},
	{
	  "id": "prod_01JDFNTMK7FVWKGWXQXF9SYZ44",
	  "title": "Medusa T-Shirt",
	  "subtitle": null,
	  "status": "published",
	  "external_id": null,
	  "description": "Reimagine the feeling of a classic T-shirt. With our cotton T-shirts, everyday essentials no longer have to be ordinary.",
	  "handle": "t-shirt",
	  "is_giftcard": false,
	  "discountable": true,
	  "thumbnail": "https://medusa-public-images.s3.eu-west-1.amazonaws.com/tee-black-front.png",
	  "collection_id": null,
	  "type_id": null,
	  "weight": "400",
	  "length": null,
	  "height": null,
	  "width": null,
	  "hs_code": null,
	  "origin_country": null,
	  "mid_code": null,
	  "material": null,
	  "created_at": "2024-11-24T18:09:31.744Z",
	  "updated_at": "2024-11-24T18:09:31.744Z",
	  "deleted_at": null,
	  "metadata": null,
	  "type": null,
	  "collection": null,
	  "options": [
		{
		  "id": "opt_01JDFNTMM3NAZGVT55H5K1P70Q",
		  "title": "Size",
		  "metadata": null,
		  "product_id": "prod_01JDFNTMK7FVWKGWXQXF9SYZ44",
		  "created_at": "2024-11-24T18:09:31.744Z",
		  "updated_at": "2024-11-24T18:09:31.744Z",
		  "deleted_at": null,
		  "values": [
			{
			  "id": "optval_01JDFNTMM96E5WZCNP86CFBVMT",
			  "value": "S",
			  "metadata": null,
			  "option_id": "opt_01JDFNTMM3NAZGVT55H5K1P70Q",
			  "created_at": "2024-11-24T18:09:31.744Z",
			  "updated_at": "2024-11-24T18:09:31.744Z",
			  "deleted_at": null
			},
			{
			  "id": "optval_01JDFNTMM9QBH3PR5V34KB0Q66",
			  "value": "M",
			  "metadata": null,
			  "option_id": "opt_01JDFNTMM3NAZGVT55H5K1P70Q",
			  "created_at": "2024-11-24T18:09:31.744Z",
			  "updated_at": "2024-11-24T18:09:31.744Z",
			  "deleted_at": null
			},
			{
			  "id": "optval_01JDFNTMM97WZ350P2P70AFZQZ",
			  "value": "L",
			  "metadata": null,
			  "option_id": "opt_01JDFNTMM3NAZGVT55H5K1P70Q",
			  "created_at": "2024-11-24T18:09:31.744Z",
			  "updated_at": "2024-11-24T18:09:31.744Z",
			  "deleted_at": null
			},
			{
			  "id": "optval_01JDFNTMM91129SFXNY26R39HT",
			  "value": "XL",
			  "metadata": null,
			  "option_id": "opt_01JDFNTMM3NAZGVT55H5K1P70Q",
			  "created_at": "2024-11-24T18:09:31.744Z",
			  "updated_at": "2024-11-24T18:09:31.744Z",
			  "deleted_at": null
			}
		  ]
		},
		{
		  "id": "opt_01JDFNTMM3RYPJ0SJ2954A8PEV",
		  "title": "Color",
		  "metadata": null,
		  "product_id": "prod_01JDFNTMK7FVWKGWXQXF9SYZ44",
		  "created_at": "2024-11-24T18:09:31.744Z",
		  "updated_at": "2024-11-24T18:09:31.744Z",
		  "deleted_at": null,
		  "values": [
			{
			  "id": "optval_01JDFNTMM9BEDPR4E9F1BDKJ5W",
			  "value": "Black",
			  "metadata": null,
			  "option_id": "opt_01JDFNTMM3RYPJ0SJ2954A8PEV",
			  "created_at": "2024-11-24T18:09:31.744Z",
			  "updated_at": "2024-11-24T18:09:31.744Z",
			  "deleted_at": null
			},
			{
			  "id": "optval_01JDFNTMM9TRFQA9MBM6Z745YR",
			  "value": "White",
			  "metadata": null,
			  "option_id": "opt_01JDFNTMM3RYPJ0SJ2954A8PEV",
			  "created_at": "2024-11-24T18:09:31.744Z",
			  "updated_at": "2024-11-24T18:09:31.744Z",
			  "deleted_at": null
			}
		  ]
		}
	  ],
	  "tags": [],
	  "images": [
		{
		  "id": "img_01JDFNTMKC0434GB7XQ23WCS17",
		  "url": "https://medusa-public-images.s3.eu-west-1.amazonaws.com/tee-black-back.png",
		  "metadata": null,
		  "rank": 0,
		  "product_id": "prod_01JDFNTMK7FVWKGWXQXF9SYZ44",
		  "created_at": "2024-11-24T18:09:31.744Z",
		  "updated_at": "2024-11-24T18:09:31.744Z",
		  "deleted_at": null
		},
		{
		  "id": "img_01JDFNTMKCG8WH02A0XJNHHGAN",
		  "url": "https://medusa-public-images.s3.eu-west-1.amazonaws.com/tee-black-front.png",
		  "metadata": null,
		  "rank": 1,
		  "product_id": "prod_01JDFNTMK7FVWKGWXQXF9SYZ44",
		  "created_at": "2024-11-24T18:09:31.744Z",
		  "updated_at": "2024-11-24T18:09:31.744Z",
		  "deleted_at": null
		},
		{
		  "id": "img_01JDFNTMKD8AAGX3CQAG63DW45",
		  "url": "https://medusa-public-images.s3.eu-west-1.amazonaws.com/tee-white-front.png",
		  "metadata": null,
		  "rank": 2,
		  "product_id": "prod_01JDFNTMK7FVWKGWXQXF9SYZ44",
		  "created_at": "2024-11-24T18:09:31.744Z",
		  "updated_at": "2024-11-24T18:09:31.744Z",
		  "deleted_at": null
		},
		{
		  "id": "img_01JDFNTMKDC2AS9FA7SRM0380W",
		  "url": "https://medusa-public-images.s3.eu-west-1.amazonaws.com/tee-white-back.png",
		  "metadata": null,
		  "rank": 3,
		  "product_id": "prod_01JDFNTMK7FVWKGWXQXF9SYZ44",
		  "created_at": "2024-11-24T18:09:31.744Z",
		  "updated_at": "2024-11-24T18:09:31.744Z",
		  "deleted_at": null
		}
	  ],
	  "variants": [
		{
		  "id": "variant_01JDFNTMNN12JXX117JQSWWZCY",
		  "title": "S / Black",
		  "sku": "SHIRT-S-BLACK",
		  "barcode": null,
		  "ean": null,
		  "upc": null,
		  "allow_backorder": false,
		  "manage_inventory": true,
		  "hs_code": null,
		  "origin_country": null,
		  "mid_code": null,
		  "material": null,
		  "weight": null,
		  "length": null,
		  "height": null,
		  "width": null,
		  "metadata": null,
		  "variant_rank": 0,
		  "product_id": "prod_01JDFNTMK7FVWKGWXQXF9SYZ44",
		  "created_at": "2024-11-24T18:09:31.832Z",
		  "updated_at": "2024-11-24T18:09:31.832Z",
		  "deleted_at": null,
		  "options": [
			{
			  "id": "optval_01JDFNTMM96E5WZCNP86CFBVMT",
			  "value": "S",
			  "metadata": null,
			  "option_id": "opt_01JDFNTMM3NAZGVT55H5K1P70Q",
			  "option": {
				"id": "opt_01JDFNTMM3NAZGVT55H5K1P70Q",
				"title": "Size",
				"metadata": null,
				"product_id": "prod_01JDFNTMK7FVWKGWXQXF9SYZ44",
				"created_at": "2024-11-24T18:09:31.744Z",
				"updated_at": "2024-11-24T18:09:31.744Z",
				"deleted_at": null
			  },
			  "created_at": "2024-11-24T18:09:31.744Z",
			  "updated_at": "2024-11-24T18:09:31.744Z",
			  "deleted_at": null
			},
			{
			  "id": "optval_01JDFNTMM9BEDPR4E9F1BDKJ5W",
			  "value": "Black",
			  "metadata": null,
			  "option_id": "opt_01JDFNTMM3RYPJ0SJ2954A8PEV",
			  "option": {
				"id": "opt_01JDFNTMM3RYPJ0SJ2954A8PEV",
				"title": "Color",
				"metadata": null,
				"product_id": "prod_01JDFNTMK7FVWKGWXQXF9SYZ44",
				"created_at": "2024-11-24T18:09:31.744Z",
				"updated_at": "2024-11-24T18:09:31.744Z",
				"deleted_at": null
			  },
			  "created_at": "2024-11-24T18:09:31.744Z",
			  "updated_at": "2024-11-24T18:09:31.744Z",
			  "deleted_at": null
			}
		  ],
		  "prices": [
			{
			  "id": "price_01JDFNTMTBNHQ9KCBMVGE1PSVP",
			  "amount": 10,
			  "currency_code": "eur",
			  "min_quantity": null,
			  "max_quantity": null,
			  "variant_id": "variant_01JDFNTMNN12JXX117JQSWWZCY",
			  "created_at": "2024-11-24T18:09:31.983Z",
			  "updated_at": "2024-11-24T18:09:31.983Z",
			  "rules": {}
			},
			{
			  "id": "price_01JDFNTMTB925Q8TXEGM1CXMNM",
			  "amount": 15,
			  "currency_code": "usd",
			  "min_quantity": null,
			  "max_quantity": null,
			  "variant_id": "variant_01JDFNTMNN12JXX117JQSWWZCY",
			  "created_at": "2024-11-24T18:09:31.983Z",
			  "updated_at": "2024-11-24T18:09:31.983Z",
			  "rules": {}
			}
		  ]
		},
		{
		  "id": "variant_01JDFNTMNP7ZW4CH67JYQPGH3C",
		  "title": "S / White",
		  "sku": "SHIRT-S-WHITE",
		  "barcode": null,
		  "ean": null,
		  "upc": null,
		  "allow_backorder": false,
		  "manage_inventory": true,
		  "hs_code": null,
		  "origin_country": null,
		  "mid_code": null,
		  "material": null,
		  "weight": null,
		  "length": null,
		  "height": null,
		  "width": null,
		  "metadata": null,
		  "variant_rank": 0,
		  "product_id": "prod_01JDFNTMK7FVWKGWXQXF9SYZ44",
		  "created_at": "2024-11-24T18:09:31.832Z",
		  "updated_at": "2024-11-24T18:09:31.832Z",
		  "deleted_at": null,
		  "options": [
			{
			  "id": "optval_01JDFNTMM96E5WZCNP86CFBVMT",
			  "value": "S",
			  "metadata": null,
			  "option_id": "opt_01JDFNTMM3NAZGVT55H5K1P70Q",
			  "option": {
				"id": "opt_01JDFNTMM3NAZGVT55H5K1P70Q",
				"title": "Size",
				"metadata": null,
				"product_id": "prod_01JDFNTMK7FVWKGWXQXF9SYZ44",
				"created_at": "2024-11-24T18:09:31.744Z",
				"updated_at": "2024-11-24T18:09:31.744Z",
				"deleted_at": null
			  },
			  "created_at": "2024-11-24T18:09:31.744Z",
			  "updated_at": "2024-11-24T18:09:31.744Z",
			  "deleted_at": null
			},
			{
			  "id": "optval_01JDFNTMM9TRFQA9MBM6Z745YR",
			  "value": "White",
			  "metadata": null,
			  "option_id": "opt_01JDFNTMM3RYPJ0SJ2954A8PEV",
			  "option": {
				"id": "opt_01JDFNTMM3RYPJ0SJ2954A8PEV",
				"title": "Color",
				"metadata": null,
				"product_id": "prod_01JDFNTMK7FVWKGWXQXF9SYZ44",
				"created_at": "2024-11-24T18:09:31.744Z",
				"updated_at": "2024-11-24T18:09:31.744Z",
				"deleted_at": null
			  },
			  "created_at": "2024-11-24T18:09:31.744Z",
			  "updated_at": "2024-11-24T18:09:31.744Z",
			  "deleted_at": null
			}
		  ],
		  "prices": [
			{
			  "id": "price_01JDFNTMTBC8YA4TZ3WMAVRD9K",
			  "amount": 10,
			  "currency_code": "eur",
			  "min_quantity": null,
			  "max_quantity": null,
			  "variant_id": "variant_01JDFNTMNP7ZW4CH67JYQPGH3C",
			  "created_at": "2024-11-24T18:09:31.983Z",
			  "updated_at": "2024-11-24T18:09:31.983Z",
			  "rules": {}
			},
			{
			  "id": "price_01JDFNTMTB1TJ86T1M003JN644",
			  "amount": 15,
			  "currency_code": "usd",
			  "min_quantity": null,
			  "max_quantity": null,
			  "variant_id": "variant_01JDFNTMNP7ZW4CH67JYQPGH3C",
			  "created_at": "2024-11-24T18:09:31.983Z",
			  "updated_at": "2024-11-24T18:09:31.983Z",
			  "rules": {}
			}
		  ]
		},
		{
		  "id": "variant_01JDFNTMNP8SCNXEZJ806V75JH",
		  "title": "M / Black",
		  "sku": "SHIRT-M-BLACK",
		  "barcode": null,
		  "ean": null,
		  "upc": null,
		  "allow_backorder": false,
		  "manage_inventory": true,
		  "hs_code": null,
		  "origin_country": null,
		  "mid_code": null,
		  "material": null,
		  "weight": null,
		  "length": null,
		  "height": null,
		  "width": null,
		  "metadata": null,
		  "variant_rank": 0,
		  "product_id": "prod_01JDFNTMK7FVWKGWXQXF9SYZ44",
		  "created_at": "2024-11-24T18:09:31.832Z",
		  "updated_at": "2024-11-24T18:09:31.832Z",
		  "deleted_at": null,
		  "options": [
			{
			  "id": "optval_01JDFNTMM9QBH3PR5V34KB0Q66",
			  "value": "M",
			  "metadata": null,
			  "option_id": "opt_01JDFNTMM3NAZGVT55H5K1P70Q",
			  "option": {
				"id": "opt_01JDFNTMM3NAZGVT55H5K1P70Q",
				"title": "Size",
				"metadata": null,
				"product_id": "prod_01JDFNTMK7FVWKGWXQXF9SYZ44",
				"created_at": "2024-11-24T18:09:31.744Z",
				"updated_at": "2024-11-24T18:09:31.744Z",
				"deleted_at": null
			  },
			  "created_at": "2024-11-24T18:09:31.744Z",
			  "updated_at": "2024-11-24T18:09:31.744Z",
			  "deleted_at": null
			},
			{
			  "id": "optval_01JDFNTMM9BEDPR4E9F1BDKJ5W",
			  "value": "Black",
			  "metadata": null,
			  "option_id": "opt_01JDFNTMM3RYPJ0SJ2954A8PEV",
			  "option": {
				"id": "opt_01JDFNTMM3RYPJ0SJ2954A8PEV",
				"title": "Color",
				"metadata": null,
				"product_id": "prod_01JDFNTMK7FVWKGWXQXF9SYZ44",
				"created_at": "2024-11-24T18:09:31.744Z",
				"updated_at": "2024-11-24T18:09:31.744Z",
				"deleted_at": null
			  },
			  "created_at": "2024-11-24T18:09:31.744Z",
			  "updated_at": "2024-11-24T18:09:31.744Z",
			  "deleted_at": null
			}
		  ],
		  "prices": [
			{
			  "id": "price_01JDFNTMTBGTX0EV6YC5XF58DN",
			  "amount": 10,
			  "currency_code": "eur",
			  "min_quantity": null,
			  "max_quantity": null,
			  "variant_id": "variant_01JDFNTMNP8SCNXEZJ806V75JH",
			  "created_at": "2024-11-24T18:09:31.983Z",
			  "updated_at": "2024-11-24T18:09:31.983Z",
			  "rules": {}
			},
			{
			  "id": "price_01JDFNTMTBPPN6RCK3YQ80D1F6",
			  "amount": 15,
			  "currency_code": "usd",
			  "min_quantity": null,
			  "max_quantity": null,
			  "variant_id": "variant_01JDFNTMNP8SCNXEZJ806V75JH",
			  "created_at": "2024-11-24T18:09:31.983Z",
			  "updated_at": "2024-11-24T18:09:31.983Z",
			  "rules": {}
			}
		  ]
		},
		{
		  "id": "variant_01JDFNTMNPFDYEC52B8ZTG2RHF",
		  "title": "M / White",
		  "sku": "SHIRT-M-WHITE",
		  "barcode": null,
		  "ean": null,
		  "upc": null,
		  "allow_backorder": false,
		  "manage_inventory": true,
		  "hs_code": null,
		  "origin_country": null,
		  "mid_code": null,
		  "material": null,
		  "weight": null,
		  "length": null,
		  "height": null,
		  "width": null,
		  "metadata": null,
		  "variant_rank": 0,
		  "product_id": "prod_01JDFNTMK7FVWKGWXQXF9SYZ44",
		  "created_at": "2024-11-24T18:09:31.832Z",
		  "updated_at": "2024-11-24T18:09:31.832Z",
		  "deleted_at": null,
		  "options": [
			{
			  "id": "optval_01JDFNTMM9QBH3PR5V34KB0Q66",
			  "value": "M",
			  "metadata": null,
			  "option_id": "opt_01JDFNTMM3NAZGVT55H5K1P70Q",
			  "option": {
				"id": "opt_01JDFNTMM3NAZGVT55H5K1P70Q",
				"title": "Size",
				"metadata": null,
				"product_id": "prod_01JDFNTMK7FVWKGWXQXF9SYZ44",
				"created_at": "2024-11-24T18:09:31.744Z",
				"updated_at": "2024-11-24T18:09:31.744Z",
				"deleted_at": null
			  },
			  "created_at": "2024-11-24T18:09:31.744Z",
			  "updated_at": "2024-11-24T18:09:31.744Z",
			  "deleted_at": null
			},
			{
			  "id": "optval_01JDFNTMM9TRFQA9MBM6Z745YR",
			  "value": "White",
			  "metadata": null,
			  "option_id": "opt_01JDFNTMM3RYPJ0SJ2954A8PEV",
			  "option": {
				"id": "opt_01JDFNTMM3RYPJ0SJ2954A8PEV",
				"title": "Color",
				"metadata": null,
				"product_id": "prod_01JDFNTMK7FVWKGWXQXF9SYZ44",
				"created_at": "2024-11-24T18:09:31.744Z",
				"updated_at": "2024-11-24T18:09:31.744Z",
				"deleted_at": null
			  },
			  "created_at": "2024-11-24T18:09:31.744Z",
			  "updated_at": "2024-11-24T18:09:31.744Z",
			  "deleted_at": null
			}
		  ],
		  "prices": [
			{
			  "id": "price_01JDFNTMTBS9PGBDTQJXF4SKXQ",
			  "amount": 10,
			  "currency_code": "eur",
			  "min_quantity": null,
			  "max_quantity": null,
			  "variant_id": "variant_01JDFNTMNPFDYEC52B8ZTG2RHF",
			  "created_at": "2024-11-24T18:09:31.983Z",
			  "updated_at": "2024-11-24T18:09:31.983Z",
			  "rules": {}
			},
			{
			  "id": "price_01JDFNTMTBTHGQXQK4Z6DVWJWA",
			  "amount": 15,
			  "currency_code": "usd",
			  "min_quantity": null,
			  "max_quantity": null,
			  "variant_id": "variant_01JDFNTMNPFDYEC52B8ZTG2RHF",
			  "created_at": "2024-11-24T18:09:31.983Z",
			  "updated_at": "2024-11-24T18:09:31.983Z",
			  "rules": {}
			}
		  ]
		},
		{
		  "id": "variant_01JDFNTMNPZARMZM9H23WN72G7",
		  "title": "L / Black",
		  "sku": "SHIRT-L-BLACK",
		  "barcode": null,
		  "ean": null,
		  "upc": null,
		  "allow_backorder": false,
		  "manage_inventory": true,
		  "hs_code": null,
		  "origin_country": null,
		  "mid_code": null,
		  "material": null,
		  "weight": null,
		  "length": null,
		  "height": null,
		  "width": null,
		  "metadata": null,
		  "variant_rank": 0,
		  "product_id": "prod_01JDFNTMK7FVWKGWXQXF9SYZ44",
		  "created_at": "2024-11-24T18:09:31.832Z",
		  "updated_at": "2024-11-24T18:09:31.832Z",
		  "deleted_at": null,
		  "options": [
			{
			  "id": "optval_01JDFNTMM97WZ350P2P70AFZQZ",
			  "value": "L",
			  "metadata": null,
			  "option_id": "opt_01JDFNTMM3NAZGVT55H5K1P70Q",
			  "option": {
				"id": "opt_01JDFNTMM3NAZGVT55H5K1P70Q",
				"title": "Size",
				"metadata": null,
				"product_id": "prod_01JDFNTMK7FVWKGWXQXF9SYZ44",
				"created_at": "2024-11-24T18:09:31.744Z",
				"updated_at": "2024-11-24T18:09:31.744Z",
				"deleted_at": null
			  },
			  "created_at": "2024-11-24T18:09:31.744Z",
			  "updated_at": "2024-11-24T18:09:31.744Z",
			  "deleted_at": null
			},
			{
			  "id": "optval_01JDFNTMM9BEDPR4E9F1BDKJ5W",
			  "value": "Black",
			  "metadata": null,
			  "option_id": "opt_01JDFNTMM3RYPJ0SJ2954A8PEV",
			  "option": {
				"id": "opt_01JDFNTMM3RYPJ0SJ2954A8PEV",
				"title": "Color",
				"metadata": null,
				"product_id": "prod_01JDFNTMK7FVWKGWXQXF9SYZ44",
				"created_at": "2024-11-24T18:09:31.744Z",
				"updated_at": "2024-11-24T18:09:31.744Z",
				"deleted_at": null
			  },
			  "created_at": "2024-11-24T18:09:31.744Z",
			  "updated_at": "2024-11-24T18:09:31.744Z",
			  "deleted_at": null
			}
		  ],
		  "prices": [
			{
			  "id": "price_01JDFNTMTC1C9KMJ3J7M5DQ2ZW",
			  "amount": 15,
			  "currency_code": "usd",
			  "min_quantity": null,
			  "max_quantity": null,
			  "variant_id": "variant_01JDFNTMNPZARMZM9H23WN72G7",
			  "created_at": "2024-11-24T18:09:31.983Z",
			  "updated_at": "2024-11-24T18:09:31.983Z",
			  "rules": {}
			},
			{
			  "id": "price_01JDFNTMTBR63CV7FW9RFQ2KYX",
			  "amount": 10,
			  "currency_code": "eur",
			  "min_quantity": null,
			  "max_quantity": null,
			  "variant_id": "variant_01JDFNTMNPZARMZM9H23WN72G7",
			  "created_at": "2024-11-24T18:09:31.983Z",
			  "updated_at": "2024-11-24T18:09:31.983Z",
			  "rules": {}
			}
		  ]
		},
		{
		  "id": "variant_01JDFNTMNPTWNRAH1G4FFHQDN6",
		  "title": "L / White",
		  "sku": "SHIRT-L-WHITE",
		  "barcode": null,
		  "ean": null,
		  "upc": null,
		  "allow_backorder": false,
		  "manage_inventory": true,
		  "hs_code": null,
		  "origin_country": null,
		  "mid_code": null,
		  "material": null,
		  "weight": null,
		  "length": null,
		  "height": null,
		  "width": null,
		  "metadata": null,
		  "variant_rank": 0,
		  "product_id": "prod_01JDFNTMK7FVWKGWXQXF9SYZ44",
		  "created_at": "2024-11-24T18:09:31.832Z",
		  "updated_at": "2024-11-24T18:09:31.832Z",
		  "deleted_at": null,
		  "options": [
			{
			  "id": "optval_01JDFNTMM97WZ350P2P70AFZQZ",
			  "value": "L",
			  "metadata": null,
			  "option_id": "opt_01JDFNTMM3NAZGVT55H5K1P70Q",
			  "option": {
				"id": "opt_01JDFNTMM3NAZGVT55H5K1P70Q",
				"title": "Size",
				"metadata": null,
				"product_id": "prod_01JDFNTMK7FVWKGWXQXF9SYZ44",
				"created_at": "2024-11-24T18:09:31.744Z",
				"updated_at": "2024-11-24T18:09:31.744Z",
				"deleted_at": null
			  },
			  "created_at": "2024-11-24T18:09:31.744Z",
			  "updated_at": "2024-11-24T18:09:31.744Z",
			  "deleted_at": null
			},
			{
			  "id": "optval_01JDFNTMM9TRFQA9MBM6Z745YR",
			  "value": "White",
			  "metadata": null,
			  "option_id": "opt_01JDFNTMM3RYPJ0SJ2954A8PEV",
			  "option": {
				"id": "opt_01JDFNTMM3RYPJ0SJ2954A8PEV",
				"title": "Color",
				"metadata": null,
				"product_id": "prod_01JDFNTMK7FVWKGWXQXF9SYZ44",
				"created_at": "2024-11-24T18:09:31.744Z",
				"updated_at": "2024-11-24T18:09:31.744Z",
				"deleted_at": null
			  },
			  "created_at": "2024-11-24T18:09:31.744Z",
			  "updated_at": "2024-11-24T18:09:31.744Z",
			  "deleted_at": null
			}
		  ],
		  "prices": [
			{
			  "id": "price_01JDFNTMTCBEPH7DHEPGHHA14T",
			  "amount": 10,
			  "currency_code": "eur",
			  "min_quantity": null,
			  "max_quantity": null,
			  "variant_id": "variant_01JDFNTMNPTWNRAH1G4FFHQDN6",
			  "created_at": "2024-11-24T18:09:31.983Z",
			  "updated_at": "2024-11-24T18:09:31.983Z",
			  "rules": {}
			},
			{
			  "id": "price_01JDFNTMTCDXJ71E379XJSVPQZ",
			  "amount": 15,
			  "currency_code": "usd",
			  "min_quantity": null,
			  "max_quantity": null,
			  "variant_id": "variant_01JDFNTMNPTWNRAH1G4FFHQDN6",
			  "created_at": "2024-11-24T18:09:31.983Z",
			  "updated_at": "2024-11-24T18:09:31.983Z",
			  "rules": {}
			}
		  ]
		},
		{
		  "id": "variant_01JDFNTMNPYMRZWKE9VZ19NJWJ",
		  "title": "XL / Black",
		  "sku": "SHIRT-XL-BLACK",
		  "barcode": null,
		  "ean": null,
		  "upc": null,
		  "allow_backorder": false,
		  "manage_inventory": true,
		  "hs_code": null,
		  "origin_country": null,
		  "mid_code": null,
		  "material": null,
		  "weight": null,
		  "length": null,
		  "height": null,
		  "width": null,
		  "metadata": null,
		  "variant_rank": 0,
		  "product_id": "prod_01JDFNTMK7FVWKGWXQXF9SYZ44",
		  "created_at": "2024-11-24T18:09:31.832Z",
		  "updated_at": "2024-11-24T18:09:31.832Z",
		  "deleted_at": null,
		  "options": [
			{
			  "id": "optval_01JDFNTMM91129SFXNY26R39HT",
			  "value": "XL",
			  "metadata": null,
			  "option_id": "opt_01JDFNTMM3NAZGVT55H5K1P70Q",
			  "option": {
				"id": "opt_01JDFNTMM3NAZGVT55H5K1P70Q",
				"title": "Size",
				"metadata": null,
				"product_id": "prod_01JDFNTMK7FVWKGWXQXF9SYZ44",
				"created_at": "2024-11-24T18:09:31.744Z",
				"updated_at": "2024-11-24T18:09:31.744Z",
				"deleted_at": null
			  },
			  "created_at": "2024-11-24T18:09:31.744Z",
			  "updated_at": "2024-11-24T18:09:31.744Z",
			  "deleted_at": null
			},
			{
			  "id": "optval_01JDFNTMM9BEDPR4E9F1BDKJ5W",
			  "value": "Black",
			  "metadata": null,
			  "option_id": "opt_01JDFNTMM3RYPJ0SJ2954A8PEV",
			  "option": {
				"id": "opt_01JDFNTMM3RYPJ0SJ2954A8PEV",
				"title": "Color",
				"metadata": null,
				"product_id": "prod_01JDFNTMK7FVWKGWXQXF9SYZ44",
				"created_at": "2024-11-24T18:09:31.744Z",
				"updated_at": "2024-11-24T18:09:31.744Z",
				"deleted_at": null
			  },
			  "created_at": "2024-11-24T18:09:31.744Z",
			  "updated_at": "2024-11-24T18:09:31.744Z",
			  "deleted_at": null
			}
		  ],
		  "prices": [
			{
			  "id": "price_01JDFNTMTCHE1B7BWRSYZDZ0Q0",
			  "amount": 10,
			  "currency_code": "eur",
			  "min_quantity": null,
			  "max_quantity": null,
			  "variant_id": "variant_01JDFNTMNPYMRZWKE9VZ19NJWJ",
			  "created_at": "2024-11-24T18:09:31.983Z",
			  "updated_at": "2024-11-24T18:09:31.983Z",
			  "rules": {}
			},
			{
			  "id": "price_01JDFNTMTC44EF2QR86JMKGDZX",
			  "amount": 15,
			  "currency_code": "usd",
			  "min_quantity": null,
			  "max_quantity": null,
			  "variant_id": "variant_01JDFNTMNPYMRZWKE9VZ19NJWJ",
			  "created_at": "2024-11-24T18:09:31.983Z",
			  "updated_at": "2024-11-24T18:09:31.983Z",
			  "rules": {}
			}
		  ]
		},
		{
		  "id": "variant_01JDFNTMNPFKTP8W8YRTN1H11C",
		  "title": "XL / White",
		  "sku": "SHIRT-XL-WHITE",
		  "barcode": null,
		  "ean": null,
		  "upc": null,
		  "allow_backorder": false,
		  "manage_inventory": true,
		  "hs_code": null,
		  "origin_country": null,
		  "mid_code": null,
		  "material": null,
		  "weight": null,
		  "length": null,
		  "height": null,
		  "width": null,
		  "metadata": null,
		  "variant_rank": 0,
		  "product_id": "prod_01JDFNTMK7FVWKGWXQXF9SYZ44",
		  "created_at": "2024-11-24T18:09:31.832Z",
		  "updated_at": "2024-11-24T18:09:31.832Z",
		  "deleted_at": null,
		  "options": [
			{
			  "id": "optval_01JDFNTMM91129SFXNY26R39HT",
			  "value": "XL",
			  "metadata": null,
			  "option_id": "opt_01JDFNTMM3NAZGVT55H5K1P70Q",
			  "option": {
				"id": "opt_01JDFNTMM3NAZGVT55H5K1P70Q",
				"title": "Size",
				"metadata": null,
				"product_id": "prod_01JDFNTMK7FVWKGWXQXF9SYZ44",
				"created_at": "2024-11-24T18:09:31.744Z",
				"updated_at": "2024-11-24T18:09:31.744Z",
				"deleted_at": null
			  },
			  "created_at": "2024-11-24T18:09:31.744Z",
			  "updated_at": "2024-11-24T18:09:31.744Z",
			  "deleted_at": null
			},
			{
			  "id": "optval_01JDFNTMM9TRFQA9MBM6Z745YR",
			  "value": "White",
			  "metadata": null,
			  "option_id": "opt_01JDFNTMM3RYPJ0SJ2954A8PEV",
			  "option": {
				"id": "opt_01JDFNTMM3RYPJ0SJ2954A8PEV",
				"title": "Color",
				"metadata": null,
				"product_id": "prod_01JDFNTMK7FVWKGWXQXF9SYZ44",
				"created_at": "2024-11-24T18:09:31.744Z",
				"updated_at": "2024-11-24T18:09:31.744Z",
				"deleted_at": null
			  },
			  "created_at": "2024-11-24T18:09:31.744Z",
			  "updated_at": "2024-11-24T18:09:31.744Z",
			  "deleted_at": null
			}
		  ],
		  "prices": [
			{
			  "id": "price_01JDFNTMTC3HZY1Z1Q2WWB2GCA",
			  "amount": 15,
			  "currency_code": "usd",
			  "min_quantity": null,
			  "max_quantity": null,
			  "variant_id": "variant_01JDFNTMNPFKTP8W8YRTN1H11C",
			  "created_at": "2024-11-24T18:09:31.983Z",
			  "updated_at": "2024-11-24T18:09:31.983Z",
			  "rules": {}
			},
			{
			  "id": "price_01JDFNTMTCPRAHB66XHYGVWWZC",
			  "amount": 10,
			  "currency_code": "eur",
			  "min_quantity": null,
			  "max_quantity": null,
			  "variant_id": "variant_01JDFNTMNPFKTP8W8YRTN1H11C",
			  "created_at": "2024-11-24T18:09:31.983Z",
			  "updated_at": "2024-11-24T18:09:31.983Z",
			  "rules": {}
			}
		  ]
		}
	  ],
	  "sales_channels": [
		{
		  "id": "sc_01JDFNTMA9FSSVQRV6T2HK6X3S",
		  "name": "Default Sales Channel",
		  "description": "Created by Medusa",
		  "is_disabled": false,
		  "metadata": null,
		  "created_at": "2024-11-24T18:09:31.465Z",
		  "updated_at": "2024-11-24T18:09:31.465Z",
		  "deleted_at": null
		}
	  ]
	},
	{
	  "id": "prod_01JDFNTMK7Q95NVN22WFXBQEPR",
	  "title": "Medusa Sweatshirt",
	  "subtitle": null,
	  "status": "published",
	  "external_id": null,
	  "description": "Reimagine the feeling of a classic sweatshirt. With our cotton sweatshirt, everyday essentials no longer have to be ordinary.",
	  "handle": "sweatshirt",
	  "is_giftcard": false,
	  "discountable": true,
	  "thumbnail": "https://medusa-public-images.s3.eu-west-1.amazonaws.com/sweatshirt-vintage-front.png",
	  "collection_id": null,
	  "type_id": null,
	  "weight": "400",
	  "length": null,
	  "height": null,
	  "width": null,
	  "hs_code": null,
	  "origin_country": null,
	  "mid_code": null,
	  "material": null,
	  "created_at": "2024-11-24T18:09:31.744Z",
	  "updated_at": "2024-11-24T18:09:31.744Z",
	  "deleted_at": null,
	  "metadata": null,
	  "type": null,
	  "collection": null,
	  "options": [
		{
		  "id": "opt_01JDFNTMM3X326PH05BT6DAVH6",
		  "title": "Size",
		  "metadata": null,
		  "product_id": "prod_01JDFNTMK7Q95NVN22WFXBQEPR",
		  "created_at": "2024-11-24T18:09:31.744Z",
		  "updated_at": "2024-11-24T18:09:31.744Z",
		  "deleted_at": null,
		  "values": [
			{
			  "id": "optval_01JDFNTMMAVS8BXAES067ND029",
			  "value": "S",
			  "metadata": null,
			  "option_id": "opt_01JDFNTMM3X326PH05BT6DAVH6",
			  "created_at": "2024-11-24T18:09:31.744Z",
			  "updated_at": "2024-11-24T18:09:31.744Z",
			  "deleted_at": null
			},
			{
			  "id": "optval_01JDFNTMMAPTNNQPR03981460B",
			  "value": "M",
			  "metadata": null,
			  "option_id": "opt_01JDFNTMM3X326PH05BT6DAVH6",
			  "created_at": "2024-11-24T18:09:31.744Z",
			  "updated_at": "2024-11-24T18:09:31.744Z",
			  "deleted_at": null
			},
			{
			  "id": "optval_01JDFNTMMAYHX6VC1892EX0YE6",
			  "value": "L",
			  "metadata": null,
			  "option_id": "opt_01JDFNTMM3X326PH05BT6DAVH6",
			  "created_at": "2024-11-24T18:09:31.744Z",
			  "updated_at": "2024-11-24T18:09:31.744Z",
			  "deleted_at": null
			},
			{
			  "id": "optval_01JDFNTMMATCM7SG01G0Z8AWPS",
			  "value": "XL",
			  "metadata": null,
			  "option_id": "opt_01JDFNTMM3X326PH05BT6DAVH6",
			  "created_at": "2024-11-24T18:09:31.744Z",
			  "updated_at": "2024-11-24T18:09:31.744Z",
			  "deleted_at": null
			}
		  ]
		}
	  ],
	  "tags": [],
	  "images": [
		{
		  "id": "img_01JDFNTMKD12A18CFQW36EAFB0",
		  "url": "https://medusa-public-images.s3.eu-west-1.amazonaws.com/sweatshirt-vintage-front.png",
		  "metadata": null,
		  "rank": 0,
		  "product_id": "prod_01JDFNTMK7Q95NVN22WFXBQEPR",
		  "created_at": "2024-11-24T18:09:31.744Z",
		  "updated_at": "2024-11-24T18:09:31.744Z",
		  "deleted_at": null
		},
		{
		  "id": "img_01JDFNTMKD22JNDWRBZ8V527G7",
		  "url": "https://medusa-public-images.s3.eu-west-1.amazonaws.com/sweatshirt-vintage-back.png",
		  "metadata": null,
		  "rank": 1,
		  "product_id": "prod_01JDFNTMK7Q95NVN22WFXBQEPR",
		  "created_at": "2024-11-24T18:09:31.744Z",
		  "updated_at": "2024-11-24T18:09:31.744Z",
		  "deleted_at": null
		}
	  ],
	  "variants": [
		{
		  "id": "variant_01JDFNTMNPVM8AYAAC6E1ZQFF3",
		  "title": "S",
		  "sku": "SWEATSHIRT-S",
		  "barcode": null,
		  "ean": null,
		  "upc": null,
		  "allow_backorder": false,
		  "manage_inventory": true,
		  "hs_code": null,
		  "origin_country": null,
		  "mid_code": null,
		  "material": null,
		  "weight": null,
		  "length": null,
		  "height": null,
		  "width": null,
		  "metadata": null,
		  "variant_rank": 0,
		  "product_id": "prod_01JDFNTMK7Q95NVN22WFXBQEPR",
		  "created_at": "2024-11-24T18:09:31.832Z",
		  "updated_at": "2024-11-24T18:09:31.832Z",
		  "deleted_at": null,
		  "options": [
			{
			  "id": "optval_01JDFNTMMAVS8BXAES067ND029",
			  "value": "S",
			  "metadata": null,
			  "option_id": "opt_01JDFNTMM3X326PH05BT6DAVH6",
			  "option": {
				"id": "opt_01JDFNTMM3X326PH05BT6DAVH6",
				"title": "Size",
				"metadata": null,
				"product_id": "prod_01JDFNTMK7Q95NVN22WFXBQEPR",
				"created_at": "2024-11-24T18:09:31.744Z",
				"updated_at": "2024-11-24T18:09:31.744Z",
				"deleted_at": null
			  },
			  "created_at": "2024-11-24T18:09:31.744Z",
			  "updated_at": "2024-11-24T18:09:31.744Z",
			  "deleted_at": null
			}
		  ],
		  "prices": [
			{
			  "id": "price_01JDFNTMTC2Y77A9JVE0JJ7K6E",
			  "amount": 10,
			  "currency_code": "eur",
			  "min_quantity": null,
			  "max_quantity": null,
			  "variant_id": "variant_01JDFNTMNPVM8AYAAC6E1ZQFF3",
			  "created_at": "2024-11-24T18:09:31.983Z",
			  "updated_at": "2024-11-24T18:09:31.983Z",
			  "rules": {}
			},
			{
			  "id": "price_01JDFNTMTC614A0BXMCVYH0CZA",
			  "amount": 15,
			  "currency_code": "usd",
			  "min_quantity": null,
			  "max_quantity": null,
			  "variant_id": "variant_01JDFNTMNPVM8AYAAC6E1ZQFF3",
			  "created_at": "2024-11-24T18:09:31.983Z",
			  "updated_at": "2024-11-24T18:09:31.983Z",
			  "rules": {}
			}
		  ]
		},
		{
		  "id": "variant_01JDFNTMNPNPFTRKD337BGKD3Y",
		  "title": "M",
		  "sku": "SWEATSHIRT-M",
		  "barcode": null,
		  "ean": null,
		  "upc": null,
		  "allow_backorder": false,
		  "manage_inventory": true,
		  "hs_code": null,
		  "origin_country": null,
		  "mid_code": null,
		  "material": null,
		  "weight": null,
		  "length": null,
		  "height": null,
		  "width": null,
		  "metadata": null,
		  "variant_rank": 0,
		  "product_id": "prod_01JDFNTMK7Q95NVN22WFXBQEPR",
		  "created_at": "2024-11-24T18:09:31.832Z",
		  "updated_at": "2024-11-24T18:09:31.832Z",
		  "deleted_at": null,
		  "options": [
			{
			  "id": "optval_01JDFNTMMAPTNNQPR03981460B",
			  "value": "M",
			  "metadata": null,
			  "option_id": "opt_01JDFNTMM3X326PH05BT6DAVH6",
			  "option": {
				"id": "opt_01JDFNTMM3X326PH05BT6DAVH6",
				"title": "Size",
				"metadata": null,
				"product_id": "prod_01JDFNTMK7Q95NVN22WFXBQEPR",
				"created_at": "2024-11-24T18:09:31.744Z",
				"updated_at": "2024-11-24T18:09:31.744Z",
				"deleted_at": null
			  },
			  "created_at": "2024-11-24T18:09:31.744Z",
			  "updated_at": "2024-11-24T18:09:31.744Z",
			  "deleted_at": null
			}
		  ],
		  "prices": [
			{
			  "id": "price_01JDFNTMTCKA6E2H4RN8P6992P",
			  "amount": 15,
			  "currency_code": "usd",
			  "min_quantity": null,
			  "max_quantity": null,
			  "variant_id": "variant_01JDFNTMNPNPFTRKD337BGKD3Y",
			  "created_at": "2024-11-24T18:09:31.983Z",
			  "updated_at": "2024-11-24T18:09:31.983Z",
			  "rules": {}
			},
			{
			  "id": "price_01JDFNTMTCEEJP53J75YACHZ9K",
			  "amount": 10,
			  "currency_code": "eur",
			  "min_quantity": null,
			  "max_quantity": null,
			  "variant_id": "variant_01JDFNTMNPNPFTRKD337BGKD3Y",
			  "created_at": "2024-11-24T18:09:31.983Z",
			  "updated_at": "2024-11-24T18:09:31.983Z",
			  "rules": {}
			}
		  ]
		},
		{
		  "id": "variant_01JDFNTMNQEZSMQ07AC2XH12DV",
		  "title": "L",
		  "sku": "SWEATSHIRT-L",
		  "barcode": null,
		  "ean": null,
		  "upc": null,
		  "allow_backorder": false,
		  "manage_inventory": true,
		  "hs_code": null,
		  "origin_country": null,
		  "mid_code": null,
		  "material": null,
		  "weight": null,
		  "length": null,
		  "height": null,
		  "width": null,
		  "metadata": null,
		  "variant_rank": 0,
		  "product_id": "prod_01JDFNTMK7Q95NVN22WFXBQEPR",
		  "created_at": "2024-11-24T18:09:31.832Z",
		  "updated_at": "2024-11-24T18:09:31.832Z",
		  "deleted_at": null,
		  "options": [
			{
			  "id": "optval_01JDFNTMMAYHX6VC1892EX0YE6",
			  "value": "L",
			  "metadata": null,
			  "option_id": "opt_01JDFNTMM3X326PH05BT6DAVH6",
			  "option": {
				"id": "opt_01JDFNTMM3X326PH05BT6DAVH6",
				"title": "Size",
				"metadata": null,
				"product_id": "prod_01JDFNTMK7Q95NVN22WFXBQEPR",
				"created_at": "2024-11-24T18:09:31.744Z",
				"updated_at": "2024-11-24T18:09:31.744Z",
				"deleted_at": null
			  },
			  "created_at": "2024-11-24T18:09:31.744Z",
			  "updated_at": "2024-11-24T18:09:31.744Z",
			  "deleted_at": null
			}
		  ],
		  "prices": [
			{
			  "id": "price_01JDFNTMTCFESRPB2XADWY0JT1",
			  "amount": 10,
			  "currency_code": "eur",
			  "min_quantity": null,
			  "max_quantity": null,
			  "variant_id": "variant_01JDFNTMNQEZSMQ07AC2XH12DV",
			  "created_at": "2024-11-24T18:09:31.983Z",
			  "updated_at": "2024-11-24T18:09:31.983Z",
			  "rules": {}
			},
			{
			  "id": "price_01JDFNTMTCY8D2E0BHM0GSNXK9",
			  "amount": 15,
			  "currency_code": "usd",
			  "min_quantity": null,
			  "max_quantity": null,
			  "variant_id": "variant_01JDFNTMNQEZSMQ07AC2XH12DV",
			  "created_at": "2024-11-24T18:09:31.983Z",
			  "updated_at": "2024-11-24T18:09:31.983Z",
			  "rules": {}
			}
		  ]
		},
		{
		  "id": "variant_01JDFNTMNQ5DCH8NGBKWBZP1PW",
		  "title": "XL",
		  "sku": "SWEATSHIRT-XL",
		  "barcode": null,
		  "ean": null,
		  "upc": null,
		  "allow_backorder": false,
		  "manage_inventory": true,
		  "hs_code": null,
		  "origin_country": null,
		  "mid_code": null,
		  "material": null,
		  "weight": null,
		  "length": null,
		  "height": null,
		  "width": null,
		  "metadata": null,
		  "variant_rank": 0,
		  "product_id": "prod_01JDFNTMK7Q95NVN22WFXBQEPR",
		  "created_at": "2024-11-24T18:09:31.832Z",
		  "updated_at": "2024-11-24T18:09:31.832Z",
		  "deleted_at": null,
		  "options": [
			{
			  "id": "optval_01JDFNTMMATCM7SG01G0Z8AWPS",
			  "value": "XL",
			  "metadata": null,
			  "option_id": "opt_01JDFNTMM3X326PH05BT6DAVH6",
			  "option": {
				"id": "opt_01JDFNTMM3X326PH05BT6DAVH6",
				"title": "Size",
				"metadata": null,
				"product_id": "prod_01JDFNTMK7Q95NVN22WFXBQEPR",
				"created_at": "2024-11-24T18:09:31.744Z",
				"updated_at": "2024-11-24T18:09:31.744Z",
				"deleted_at": null
			  },
			  "created_at": "2024-11-24T18:09:31.744Z",
			  "updated_at": "2024-11-24T18:09:31.744Z",
			  "deleted_at": null
			}
		  ],
		  "prices": [
			{
			  "id": "price_01JDFNTMTD83F53N3H0HD1EZ9V",
			  "amount": 10,
			  "currency_code": "eur",
			  "min_quantity": null,
			  "max_quantity": null,
			  "variant_id": "variant_01JDFNTMNQ5DCH8NGBKWBZP1PW",
			  "created_at": "2024-11-24T18:09:31.983Z",
			  "updated_at": "2024-11-24T18:09:31.983Z",
			  "rules": {}
			},
			{
			  "id": "price_01JDFNTMTDVBSEQRRCEYEVDFD8",
			  "amount": 15,
			  "currency_code": "usd",
			  "min_quantity": null,
			  "max_quantity": null,
			  "variant_id": "variant_01JDFNTMNQ5DCH8NGBKWBZP1PW",
			  "created_at": "2024-11-24T18:09:31.983Z",
			  "updated_at": "2024-11-24T18:09:31.983Z",
			  "rules": {}
			}
		  ]
		}
	  ],
	  "sales_channels": [
		{
		  "id": "sc_01JDFNTMA9FSSVQRV6T2HK6X3S",
		  "name": "Default Sales Channel",
		  "description": "Created by Medusa",
		  "is_disabled": false,
		  "metadata": null,
		  "created_at": "2024-11-24T18:09:31.465Z",
		  "updated_at": "2024-11-24T18:09:31.465Z",
		  "deleted_at": null
		}
	  ]
	},
	{
	  "id": "prod_01JDFNTMK7SF4WB62K18DY465R",
	  "title": "Medusa Sweatpants",
	  "subtitle": null,
	  "status": "published",
	  "external_id": null,
	  "description": "Reimagine the feeling of classic sweatpants. With our cotton sweatpants, everyday essentials no longer have to be ordinary.",
	  "handle": "sweatpants",
	  "is_giftcard": false,
	  "discountable": true,
	  "thumbnail": "https://medusa-public-images.s3.eu-west-1.amazonaws.com/sweatpants-gray-front.png",
	  "collection_id": null,
	  "type_id": null,
	  "weight": "400",
	  "length": null,
	  "height": null,
	  "width": null,
	  "hs_code": null,
	  "origin_country": null,
	  "mid_code": null,
	  "material": null,
	  "created_at": "2024-11-24T18:09:31.744Z",
	  "updated_at": "2024-11-24T18:09:31.744Z",
	  "deleted_at": null,
	  "metadata": null,
	  "type": null,
	  "collection": null,
	  "options": [
		{
		  "id": "opt_01JDFNTMM3WR8H42NZNV98KVZD",
		  "title": "Size",
		  "metadata": null,
		  "product_id": "prod_01JDFNTMK7SF4WB62K18DY465R",
		  "created_at": "2024-11-24T18:09:31.744Z",
		  "updated_at": "2024-11-24T18:09:31.744Z",
		  "deleted_at": null,
		  "values": [
			{
			  "id": "optval_01JDFNTMMBABB3SBDTXE331APR",
			  "value": "S",
			  "metadata": null,
			  "option_id": "opt_01JDFNTMM3WR8H42NZNV98KVZD",
			  "created_at": "2024-11-24T18:09:31.744Z",
			  "updated_at": "2024-11-24T18:09:31.744Z",
			  "deleted_at": null
			},
			{
			  "id": "optval_01JDFNTMMBBBDZQMX56KHN9ZDB",
			  "value": "M",
			  "metadata": null,
			  "option_id": "opt_01JDFNTMM3WR8H42NZNV98KVZD",
			  "created_at": "2024-11-24T18:09:31.744Z",
			  "updated_at": "2024-11-24T18:09:31.744Z",
			  "deleted_at": null
			},
			{
			  "id": "optval_01JDFNTMMBXSPQHNKN8FA2G0Q0",
			  "value": "L",
			  "metadata": null,
			  "option_id": "opt_01JDFNTMM3WR8H42NZNV98KVZD",
			  "created_at": "2024-11-24T18:09:31.744Z",
			  "updated_at": "2024-11-24T18:09:31.744Z",
			  "deleted_at": null
			},
			{
			  "id": "optval_01JDFNTMMB0B4KT0B19QNC9B48",
			  "value": "XL",
			  "metadata": null,
			  "option_id": "opt_01JDFNTMM3WR8H42NZNV98KVZD",
			  "created_at": "2024-11-24T18:09:31.744Z",
			  "updated_at": "2024-11-24T18:09:31.744Z",
			  "deleted_at": null
			}
		  ]
		}
	  ],
	  "tags": [],
	  "images": [
		{
		  "id": "img_01JDFNTMKDEHA72HCNCMWR9JHV",
		  "url": "https://medusa-public-images.s3.eu-west-1.amazonaws.com/sweatpants-gray-front.png",
		  "metadata": null,
		  "rank": 0,
		  "product_id": "prod_01JDFNTMK7SF4WB62K18DY465R",
		  "created_at": "2024-11-24T18:09:31.744Z",
		  "updated_at": "2024-11-24T18:09:31.744Z",
		  "deleted_at": null
		},
		{
		  "id": "img_01JDFNTMKDFCTH3DTTSH988SSG",
		  "url": "https://medusa-public-images.s3.eu-west-1.amazonaws.com/sweatpants-gray-back.png",
		  "metadata": null,
		  "rank": 1,
		  "product_id": "prod_01JDFNTMK7SF4WB62K18DY465R",
		  "created_at": "2024-11-24T18:09:31.744Z",
		  "updated_at": "2024-11-24T18:09:31.744Z",
		  "deleted_at": null
		}
	  ],
	  "variants": [
		{
		  "id": "variant_01JDFNTMNQQKRPN53M0XCDZA5G",
		  "title": "S",
		  "sku": "SWEATPANTS-S",
		  "barcode": null,
		  "ean": null,
		  "upc": null,
		  "allow_backorder": false,
		  "manage_inventory": true,
		  "hs_code": null,
		  "origin_country": null,
		  "mid_code": null,
		  "material": null,
		  "weight": null,
		  "length": null,
		  "height": null,
		  "width": null,
		  "metadata": null,
		  "variant_rank": 0,
		  "product_id": "prod_01JDFNTMK7SF4WB62K18DY465R",
		  "created_at": "2024-11-24T18:09:31.832Z",
		  "updated_at": "2024-11-24T18:09:31.832Z",
		  "deleted_at": null,
		  "options": [
			{
			  "id": "optval_01JDFNTMMBABB3SBDTXE331APR",
			  "value": "S",
			  "metadata": null,
			  "option_id": "opt_01JDFNTMM3WR8H42NZNV98KVZD",
			  "option": {
				"id": "opt_01JDFNTMM3WR8H42NZNV98KVZD",
				"title": "Size",
				"metadata": null,
				"product_id": "prod_01JDFNTMK7SF4WB62K18DY465R",
				"created_at": "2024-11-24T18:09:31.744Z",
				"updated_at": "2024-11-24T18:09:31.744Z",
				"deleted_at": null
			  },
			  "created_at": "2024-11-24T18:09:31.744Z",
			  "updated_at": "2024-11-24T18:09:31.744Z",
			  "deleted_at": null
			}
		  ],
		  "prices": [
			{
			  "id": "price_01JDFNTMTD8W3CX7C3Q6Y8APVX",
			  "amount": 15,
			  "currency_code": "usd",
			  "min_quantity": null,
			  "max_quantity": null,
			  "variant_id": "variant_01JDFNTMNQQKRPN53M0XCDZA5G",
			  "created_at": "2024-11-24T18:09:31.983Z",
			  "updated_at": "2024-11-24T18:09:31.983Z",
			  "rules": {}
			},
			{
			  "id": "price_01JDFNTMTDNCSP9DWZ5990J92T",
			  "amount": 10,
			  "currency_code": "eur",
			  "min_quantity": null,
			  "max_quantity": null,
			  "variant_id": "variant_01JDFNTMNQQKRPN53M0XCDZA5G",
			  "created_at": "2024-11-24T18:09:31.983Z",
			  "updated_at": "2024-11-24T18:09:31.983Z",
			  "rules": {}
			}
		  ]
		},
		{
		  "id": "variant_01JDFNTMNQVVDQ3C08BJFT98H8",
		  "title": "M",
		  "sku": "SWEATPANTS-M",
		  "barcode": null,
		  "ean": null,
		  "upc": null,
		  "allow_backorder": false,
		  "manage_inventory": true,
		  "hs_code": null,
		  "origin_country": null,
		  "mid_code": null,
		  "material": null,
		  "weight": null,
		  "length": null,
		  "height": null,
		  "width": null,
		  "metadata": null,
		  "variant_rank": 0,
		  "product_id": "prod_01JDFNTMK7SF4WB62K18DY465R",
		  "created_at": "2024-11-24T18:09:31.832Z",
		  "updated_at": "2024-11-24T18:09:31.832Z",
		  "deleted_at": null,
		  "options": [
			{
			  "id": "optval_01JDFNTMMBBBDZQMX56KHN9ZDB",
			  "value": "M",
			  "metadata": null,
			  "option_id": "opt_01JDFNTMM3WR8H42NZNV98KVZD",
			  "option": {
				"id": "opt_01JDFNTMM3WR8H42NZNV98KVZD",
				"title": "Size",
				"metadata": null,
				"product_id": "prod_01JDFNTMK7SF4WB62K18DY465R",
				"created_at": "2024-11-24T18:09:31.744Z",
				"updated_at": "2024-11-24T18:09:31.744Z",
				"deleted_at": null
			  },
			  "created_at": "2024-11-24T18:09:31.744Z",
			  "updated_at": "2024-11-24T18:09:31.744Z",
			  "deleted_at": null
			}
		  ],
		  "prices": [
			{
			  "id": "price_01JDFNTMTDT8C5QW2K08ERNKE4",
			  "amount": 15,
			  "currency_code": "usd",
			  "min_quantity": null,
			  "max_quantity": null,
			  "variant_id": "variant_01JDFNTMNQVVDQ3C08BJFT98H8",
			  "created_at": "2024-11-24T18:09:31.983Z",
			  "updated_at": "2024-11-24T18:09:31.983Z",
			  "rules": {}
			},
			{
			  "id": "price_01JDFNTMTDZMN23XHVHRVH1K22",
			  "amount": 10,
			  "currency_code": "eur",
			  "min_quantity": null,
			  "max_quantity": null,
			  "variant_id": "variant_01JDFNTMNQVVDQ3C08BJFT98H8",
			  "created_at": "2024-11-24T18:09:31.983Z",
			  "updated_at": "2024-11-24T18:09:31.983Z",
			  "rules": {}
			}
		  ]
		},
		{
		  "id": "variant_01JDFNTMNQTAAHZAX8C991PE5G",
		  "title": "L",
		  "sku": "SWEATPANTS-L",
		  "barcode": null,
		  "ean": null,
		  "upc": null,
		  "allow_backorder": false,
		  "manage_inventory": true,
		  "hs_code": null,
		  "origin_country": null,
		  "mid_code": null,
		  "material": null,
		  "weight": null,
		  "length": null,
		  "height": null,
		  "width": null,
		  "metadata": null,
		  "variant_rank": 0,
		  "product_id": "prod_01JDFNTMK7SF4WB62K18DY465R",
		  "created_at": "2024-11-24T18:09:31.832Z",
		  "updated_at": "2024-11-24T18:09:31.832Z",
		  "deleted_at": null,
		  "options": [
			{
			  "id": "optval_01JDFNTMMBXSPQHNKN8FA2G0Q0",
			  "value": "L",
			  "metadata": null,
			  "option_id": "opt_01JDFNTMM3WR8H42NZNV98KVZD",
			  "option": {
				"id": "opt_01JDFNTMM3WR8H42NZNV98KVZD",
				"title": "Size",
				"metadata": null,
				"product_id": "prod_01JDFNTMK7SF4WB62K18DY465R",
				"created_at": "2024-11-24T18:09:31.744Z",
				"updated_at": "2024-11-24T18:09:31.744Z",
				"deleted_at": null
			  },
			  "created_at": "2024-11-24T18:09:31.744Z",
			  "updated_at": "2024-11-24T18:09:31.744Z",
			  "deleted_at": null
			}
		  ],
		  "prices": [
			{
			  "id": "price_01JDFNTMTDCC9YY8ZME28JXF3S",
			  "amount": 15,
			  "currency_code": "usd",
			  "min_quantity": null,
			  "max_quantity": null,
			  "variant_id": "variant_01JDFNTMNQTAAHZAX8C991PE5G",
			  "created_at": "2024-11-24T18:09:31.983Z",
			  "updated_at": "2024-11-24T18:09:31.983Z",
			  "rules": {}
			},
			{
			  "id": "price_01JDFNTMTD2C3VPB8VA6PJZ3DR",
			  "amount": 10,
			  "currency_code": "eur",
			  "min_quantity": null,
			  "max_quantity": null,
			  "variant_id": "variant_01JDFNTMNQTAAHZAX8C991PE5G",
			  "created_at": "2024-11-24T18:09:31.983Z",
			  "updated_at": "2024-11-24T18:09:31.983Z",
			  "rules": {}
			}
		  ]
		},
		{
		  "id": "variant_01JDFNTMNQCFFQYJN4RVNVBK3D",
		  "title": "XL",
		  "sku": "SWEATPANTS-XL",
		  "barcode": null,
		  "ean": null,
		  "upc": null,
		  "allow_backorder": false,
		  "manage_inventory": true,
		  "hs_code": null,
		  "origin_country": null,
		  "mid_code": null,
		  "material": null,
		  "weight": null,
		  "length": null,
		  "height": null,
		  "width": null,
		  "metadata": null,
		  "variant_rank": 0,
		  "product_id": "prod_01JDFNTMK7SF4WB62K18DY465R",
		  "created_at": "2024-11-24T18:09:31.832Z",
		  "updated_at": "2024-11-24T18:09:31.832Z",
		  "deleted_at": null,
		  "options": [
			{
			  "id": "optval_01JDFNTMMB0B4KT0B19QNC9B48",
			  "value": "XL",
			  "metadata": null,
			  "option_id": "opt_01JDFNTMM3WR8H42NZNV98KVZD",
			  "option": {
				"id": "opt_01JDFNTMM3WR8H42NZNV98KVZD",
				"title": "Size",
				"metadata": null,
				"product_id": "prod_01JDFNTMK7SF4WB62K18DY465R",
				"created_at": "2024-11-24T18:09:31.744Z",
				"updated_at": "2024-11-24T18:09:31.744Z",
				"deleted_at": null
			  },
			  "created_at": "2024-11-24T18:09:31.744Z",
			  "updated_at": "2024-11-24T18:09:31.744Z",
			  "deleted_at": null
			}
		  ],
		  "prices": [
			{
			  "id": "price_01JDFNTMTDES4X5979ZV8FAG6B",
			  "amount": 10,
			  "currency_code": "eur",
			  "min_quantity": null,
			  "max_quantity": null,
			  "variant_id": "variant_01JDFNTMNQCFFQYJN4RVNVBK3D",
			  "created_at": "2024-11-24T18:09:31.983Z",
			  "updated_at": "2024-11-24T18:09:31.983Z",
			  "rules": {}
			},
			{
			  "id": "price_01JDFNTMTDW8ZJ97F20M5Z0VP6",
			  "amount": 15,
			  "currency_code": "usd",
			  "min_quantity": null,
			  "max_quantity": null,
			  "variant_id": "variant_01JDFNTMNQCFFQYJN4RVNVBK3D",
			  "created_at": "2024-11-24T18:09:31.983Z",
			  "updated_at": "2024-11-24T18:09:31.983Z",
			  "rules": {}
			}
		  ]
		}
	  ],
	  "sales_channels": [
		{
		  "id": "sc_01JDFNTMA9FSSVQRV6T2HK6X3S",
		  "name": "Default Sales Channel",
		  "description": "Created by Medusa",
		  "is_disabled": false,
		  "metadata": null,
		  "created_at": "2024-11-24T18:09:31.465Z",
		  "updated_at": "2024-11-24T18:09:31.465Z",
		  "deleted_at": null
		}
	  ]
	}
  ]
"""

struct MockData {
	
	var products: [Products] = try! JSONDecoder().decode([Products].self, from: JSON.data(using: .utf8)!)
}
