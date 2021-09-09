//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Fahim Rahman on 9/7/21.
//

import SwiftUI

// MARK: - Product Detail View
struct ProductDetailView: View {
    
    // properties
    @EnvironmentObject var shop: Shop
    
    // body
    var body: some View {
        // vstack
        VStack(alignment: .leading, spacing: 5, content: {
            
            // MARK: - navbar
            
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            
            // MARK: - header
            
            HeaderDetailView()
                .padding(.horizontal)
            
            // MARK: - detail top
            
            TopDetailView()
                .padding(.horizontal)
                .zIndex(1)
            
            // vstack
            VStack(alignment: .center, spacing: 0, content: {
                
                // MARK: - ratings and sizes
                
                RatingsSizesDetailView()
                    .padding(.top, -20)
                    .padding(.bottom, 15)
                
                // MARK: - description
                
                // scroll view
                ScrollView(.vertical, showsIndicators: false, content: {
                    Text(shop.selectedProduct?.description ?? sampleProducts.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                }) //: scroll view
                
                
                // MARK: - quantity and favourite
                
                QuantityFavouriteDetailView()
                    .padding(.vertical, 10)
                
                
                // MARK: - add to cart
                
                AddToCartDetailView()
                    .padding(.bottom, 20)
                
            }) //: vstack
            .padding(.horizontal)
            .background(
                Color.white.clipShape(CustomShape())
                    .padding(.top, -105)
            )
        }) //: vstack
        .zIndex(0)
        .ignoresSafeArea(.all, edges: .all)
        .background(
            Color(
                red: shop.selectedProduct?.red ?? sampleProducts.red,
                green: shop.selectedProduct?.green ?? sampleProducts.green,
                blue: shop.selectedProduct?.blue ?? sampleProducts.blue
            )
            .ignoresSafeArea(.all, edges: .all)
        )
    } //: body
}


// MARK: - Preview

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .environmentObject(Shop())
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
