//
//  BrandGridView.swift
//  Touchdown
//
//  Created by Fahim Rahman on 9/6/21.
//

import SwiftUI

// MARK: - Brand Grid View

struct BrandGridView: View {
    
    // properties
    
    // body
    var body: some View {
        // scroll view
        ScrollView(.horizontal, showsIndicators: false, content: {
            // lazy h grid
            LazyHGrid(rows: gridLayout, spacing: columnSpacing, content: {
                // for each
                ForEach(brands) { brand in
                    BrandItemView(brand: brand)
                } //: for each
            }) //: lazy h grid
            .frame(height: 200)
            .padding(15)
        }) //: scroll view
    } //: body
}


// MARK: - Preview

struct BrandGridView_Previews: PreviewProvider {
    static var previews: some View {
        BrandGridView()
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
