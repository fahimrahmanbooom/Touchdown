//
//  CategoryItemView.swift
//  Touchdown
//
//  Created by Fahim Rahman on 9/5/21.
//

import SwiftUI

// MARK: - Category Item View

struct CategoryItemView: View {
    
    // properties
    let category: CategoryModel
    
    // body
    var body: some View {
        // button
        Button(action: {
            // button action goes here
        }, label: {
            // hstack
            HStack(alignment: .center, spacing: 6, content: {
                
                Image(category.image)
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40, alignment: .center)
                    .foregroundColor(.gray)
                
                Text(category.name.uppercased())
                    .fontWeight(.light)
                    .foregroundColor(.gray)
                
                Spacer()
                
            }) //: hstack
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color.gray, lineWidth: 1)
            )
        }) //: button
    } //: body
}

// MARK: - Preview

struct CategoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItemView(category: categories.first!)
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
