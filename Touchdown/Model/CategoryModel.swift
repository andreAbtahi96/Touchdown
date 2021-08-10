//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Andre Abtahi on 8/9/21.
//

import Foundation

struct Category: Codable, Identifiable{
    let id: Int
    let name: String
    let image: String
}
