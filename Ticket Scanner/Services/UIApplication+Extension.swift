//
//  UIApplication+Extension.swift
//  Ticket Scanner
//
//  Created by Eric Wätke on 08.03.25.
//

import UIKit


extension UIApplication {
	func endEditing() {
		sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
	}
}
