//
//  CodableBundleExtension.swift
//  Touchdown
//
//  Created by Fahim Rahman on 9/4/21.
//

import SwiftUI

// MARK: - Codable Bundle Extension

extension Bundle {
    // decode
    func decode<T: Codable>(_ file: String) -> T {
        // locate the json file
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate file in bundle")
        }
        
        // create a property for the data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle")
        }
        
        // create a decoder
        let decoder = JSONDecoder()
        
        // create a property for decoded data
        guard let decodedData = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) from bundle")
        }
        
        // return the ready to use data
        return decodedData
    }
}
