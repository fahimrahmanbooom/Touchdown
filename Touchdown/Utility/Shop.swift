//
//  Shop.swift
//  Touchdown
//
//  Created by Fahim Rahman on 9/7/21.
//

import SwiftUI

// MARK: - Shop

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: ProductModel? = nil
}
