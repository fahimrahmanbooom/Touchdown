//
//  QuantityFavouriteDetailView.swift
//  Touchdown
//
//  Created by Fahim Rahman on 9/7/21.
//

import SwiftUI

// MARK: - Quantity Favourite Detail View
struct QuantityFavouriteDetailView: View {
    
    // properties
    @State private var counter: Int = 0
    
    // body
    var body: some View {
        // hstack
        HStack(alignment: .center, spacing: 6, content: {
            // button minus
            Button(action: {
                if counter > 0 {
                    hapticFeedback.impactOccurred()
                    counter -= 1
                }
            }, label: {
                Image(systemName: "minus.circle")
            }) //: button minus
            
            Text("\(counter)")
                .fontWeight(.semibold)
                .frame(minWidth: 36)
            
            // button plus
            Button(action: {
                if counter < 100 {
                    hapticFeedback.impactOccurred()
                    counter += 1
                }
            }, label: {
                Image(systemName: "plus.circle")
            }) //: button plus
            
            Spacer()
            
            // button heart
            Button(action: {
                hapticFeedback.impactOccurred()
            }, label: {
                Image(systemName: "heart.circle")
                    .foregroundColor(.red)
            }) //: button heart
            
        }) //: hstack
        .font(.system(.title, design: .rounded))
        .foregroundColor(.black)
        .imageScale(.large)
    } //: body
}


// MARK: - Preview

struct QuantityFavouriteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        QuantityFavouriteDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
