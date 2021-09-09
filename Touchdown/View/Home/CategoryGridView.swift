//
//  CategoryGridView.swift
//  Touchdown
//
//  Created by Fahim Rahman on 9/5/21.
//

import SwiftUI


// MARK: - Category Grid View

struct CategoryGridView: View {
    
    // properties
    
    // body
    var body: some View {
        // scroll view
        ScrollView(.horizontal, showsIndicators: false, content: {
            // lazy h grid
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: [], content: {
                // section
                Section(header: SectionView(rotateClockwise: false), footer: SectionView(rotateClockwise: true), content: {
                    // foreach
                    ForEach(categories) { category in
                        CategoryItemView(category: category)
                    } //: foreach
                }) //: section
            }) //: lazy h grid
            .frame(height: 145 + rowSpacing)
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
        }) //: scroll view
    } //: body
}


// MARK: - Preview

struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
