//
//  Shop.swift
//  Touchdown
//
//  Created by Andre Abtahi on 8/12/21.
//

import Foundation

class Shop: ObservableObject {
    
    // @Published tells swift. Any changes should refresh view.
    @Published var showingProduct: Bool = false
    
    // ? is an optional property. Optionals is nil by default.
    @Published var selectedProduct: Product? = nil
}
