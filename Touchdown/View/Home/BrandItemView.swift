//
//  BrandItemView.swift
//  Touchdown
//
//  Created by Fahim Rahman on 9/6/21.
//

import SwiftUI

// MARK: - Brand Item View

struct BrandItemView: View {
    
    // properties
    let brand: BrandModel
    
    // body
    var body: some View {
        Image(brand.image)
            .resizable()
            .scaledToFit()
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(
                RoundedRectangle(cornerRadius: 12).stroke(Color.gray, lineWidth: 1)
            )
    }
}


// MARK: - Preview

struct BrandItemView_Previews: PreviewProvider {
    static var previews: some View {
        BrandItemView(brand: brands.first!)
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
