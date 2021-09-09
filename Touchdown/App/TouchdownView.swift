//
//  TouchDownView.swift
//  Touchdown
//
//  Created by Fahim Rahman on 9/4/21.
//

import SwiftUI

// MARK: - Touchdown View

struct TouchdownView: View {
    
    // properties
    @EnvironmentObject var shop: Shop
    
    // body
    var body: some View {
        // zstack
        ZStack {
            if shop.showingProduct == false && shop.selectedProduct == nil {
                // vstack
                VStack(spacing: 0, content: {
                    
                    NavigationBarView()
                        .padding(.horizontal, 15)
                        .padding(.bottom)
                        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                        .background(Color.white)
                        .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 5)
                    
                    // scroll view
                    ScrollView(.vertical, showsIndicators: false, content: {
                        // vstack
                        VStack(spacing: 0, content: {
                            
                            FeaturedTabView()
                            
                            CategoryGridView()
                            
                            TitleView(title: "Helmets")
                            
                            // lazy v grid
                            LazyVGrid(columns: gridLayout, spacing: 15, content: {
                                // foreach
                                ForEach(products) { product in
                                    ProductItemView(product: product)
                                        .onTapGesture(perform: {
                                            hapticFeedback.impactOccurred()
                                            withAnimation(.easeOut) {
                                                shop.selectedProduct = product
                                                shop.showingProduct = true
                                            }
                                        })
                                } //: foreach
                            }) //: lazy v grid
                            .padding(15)
                            
                            TitleView(title: "Brands")
                            
                            BrandGridView()
                            
                            FooterView()
                                .padding(.horizontal)
                            
                        }) //: vstack
                    }) //: scroll view
                }) //: vstack
                .background(colorBackground.ignoresSafeArea(.all, edges: .all))
            } else {
                ProductDetailView()
            }
        } //: zstack
        .ignoresSafeArea(.all, edges: .top)
    } //: body
}


// MARK: - Preview

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TouchdownView()
            .environmentObject(Shop())
    }
}
