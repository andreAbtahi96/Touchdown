//
//  Constant .swift
//  Touchdown
//
//  Created by Andre Abtahi on 8/7/21.
//
//  This file collects essential data: colors, fonts, etc into one file.

import SwiftUI

//  DATA

let players: [Player] = Bundle.main.decode("player.json")
let categories: [Category] = Bundle.main.decode("category.json")
let products: [Product] = Bundle.main.decode("product.json")
let brands: [Brand] = Bundle.main.decode("brand.json")
let sampleProduct: Product = products[0] // for rapid prototyping purposes.

//  COLOR

let colorBackground: Color = Color("ColorBackground")
let colorGray: Color = Color(UIColor.systemGray4)

//  LAYOUT

let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem]{
    /*
     We can't use "let" constant for computed properties. That is why we use var.
     This helps us build vertical or horizontal layers
     */
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}// GRID LAYOUT

//  UX
let feedback = UIImpactFeedbackGenerator(style: .medium)

//  API
//  IMAGE
//  FONT
//  STRING
//  MISC
