//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Fahim Rahman on 9/5/21.
//

import SwiftUI

// MARK: - Category Model

struct CategoryModel: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
