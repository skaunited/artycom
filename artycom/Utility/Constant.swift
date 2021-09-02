//
//  Constant.swift
//  artycom
//
//  Created by Skander Bahri on 23/08/2021.
//

import SwiftUI

//MARK: DATA
let players: [Player] = Bundle.main.decode("player.json")
let categories: [Category] = Bundle.main.decode("category.json")
let products: [Product] = Bundle.main.decode("product.json")
let brands: [Brand] = Bundle.main.decode("brand.json")
let simpleProduct: Product = products[0]

//MARK: COLOR
let colorBackground: Color = Color("ColorBackground")
let colorGray: Color = Color(UIColor.systemGray4)
//MARK: LAYOUT
let columnSpacing: CGFloat = 10
let rawSpacing: CGFloat = 10
//I dont understand this line
var gridLayout:[GridItem]{
    return Array(repeating: GridItem(.flexible(), spacing: rawSpacing), count: 2)
}
//MARK: UX
//MARK: API
//MARK: IMAGE
//MARK: FONT
//MARK: STRING
let FOOTER_CONTENT_TEXT = "We offer the most cutting edge confortable, lightweight and durable  football helmets in the market at offordable prices."
let FOOTER_COPYRIGHT = "Copyright © Skander BAHRI\n All rights reserved"
//MARK: MISC
