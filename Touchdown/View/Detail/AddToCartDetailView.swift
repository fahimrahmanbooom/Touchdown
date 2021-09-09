//
//  AddToCartDetailView.swift
//  Touchdown
//
//  Created by Fahim Rahman on 9/7/21.
//

import SwiftUI

// MARK: - Add to cart detail view

struct AddToCartDetailView: View {
    
    // properties
    @EnvironmentObject var shop: Shop
    
    // body
    var body: some View {
        // button
        Button(action: {
            hapticFeedback.impactOccurred()
        }, label: {
            
            Spacer()
            
            Text("Add to cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.black.opacity(0.9))
            
            Spacer()
            
        }) //: button
        .padding(15)
        .background(Color(red: shop.selectedProduct?.red ?? sampleProducts.red, green: shop.selectedProduct?.green ?? sampleProducts.green, blue: shop.selectedProduct?.blue ?? sampleProducts.blue))
        .clipShape(Capsule())
    } //: body
}


// MARK: - Preview

struct AddToCartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
