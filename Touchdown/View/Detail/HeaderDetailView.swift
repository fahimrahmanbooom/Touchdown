//
//  HeaderDetailView.swift
//  Touchdown
//
//  Created by Fahim Rahman on 9/7/21.
//

import SwiftUI

// MARK: - Header Detail View

struct HeaderDetailView: View {
    
    // properties
    @EnvironmentObject var shop: Shop
    
    // body
    var body: some View {
        // vstack
        VStack(alignment: .leading, spacing: 6, content: {
            Text("Protective Gear")
            Text(shop.selectedProduct?.name ?? sampleProducts.name)
                .font(.largeTitle)
                .fontWeight(.black)
        }) //: vstack
    } //: body
}


// MARK: - Preview

struct HeaderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
