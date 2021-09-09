//
//  Constant.swift
//  Touchdown
//
//  Created by Fahim Rahman on 9/4/21.
//

import SwiftUI

// MARK:- DATA

let players: [PlayerModel] = Bundle.main.decode("player.json")
let categories: [CategoryModel] = Bundle.main.decode("category.json")
let products: [ProductModel] = Bundle.main.decode("product.json")
let brands: [BrandModel] = Bundle.main.decode("brand.json")
let sampleProducts: ProductModel = products.first!

// MARK:- COLOR

let colorBackground: Color = Color("ColorBackground")
let colorGray: Color = Color(UIColor.systemGray4)

// MARK:- LAYOUT

let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] { // computed property
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}

// MARK:- UX
let hapticFeedback = UIImpactFeedbackGenerator(style: .medium)

// MARK:- API


// MARK:- IMAGE


// MARK:- Font


// MARK:- STRING


// MARK:- MISC
