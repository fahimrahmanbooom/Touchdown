//
//  ProductItemView.swift
//  Touchdown
//
//  Created by Fahim Rahman on 9/6/21.
//

import SwiftUI

// MARK: - Product Item View

struct ProductItemView: View {
    
    // properties
    let product: ProductModel
    
    // body
    var body: some View {
        // vstack
        VStack(alignment: .leading, spacing: 6, content: {
            // zstack
            ZStack(content: {
                // photo
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            }) //: zstack
            .background(Color(red: product.red, green: product.green, blue: product.blue))
            .cornerRadius(12)
            
            // name
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
            
            // price
            Text(product.formattedPrice)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
            
        }) //: vstack
    } //: body
}


// MARK: - Preview

struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(product: products.first!)
            .previewLayout(.fixed(width: 200, height: 300))
            .padding()
            .background(colorBackground)
    }
}
