//
//  TopDetailView.swift
//  Touchdown
//
//  Created by Fahim Rahman on 9/7/21.
//

import SwiftUI


// MARK: - Top Detail View

struct TopDetailView: View {
    
    // properties
    @EnvironmentObject var shop: Shop
    
    @State private var isAnimating: Bool = false
    
    // body
    var body: some View {
        // hstack
        HStack(alignment: .center, spacing: 6, content: {
            // vstack
            VStack(alignment: .leading, spacing: 6, content: {
                
                Text("Price")
                    .fontWeight(.semibold)
                
                Text(shop.selectedProduct?.formattedPrice ?? sampleProducts.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35, anchor: .leading)
            }) //: vstack
            .offset(y: isAnimating ? -50 : -75)
            
            Spacer()
            
            Image(shop.selectedProduct?.image ?? sampleProducts.image)
                .resizable()
                .scaledToFit()
                .offset(y: isAnimating ? 0 : -35)
            
        }) //: hstack
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.75)) {
                isAnimating.toggle()
            }
        })
    } //: body
}


// MARK: - Preview

struct TopDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TopDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
