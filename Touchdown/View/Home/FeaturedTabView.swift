//
//  FeaturedTabView.swift
//  Touchdown
//
//  Created by Fahim Rahman on 9/5/21.
//

import SwiftUI

// MARK: - Featured Tab View

struct FeaturedTabView: View {
    
    // properties
    
    // body
    var body: some View {
        // tabview
        TabView {
            // foreach
            ForEach(players) { player in
                FeaturedItemView(player: player)
                    .padding(.top, 15)
                    .padding(.horizontal, 15)
            } //: foreach
        } //: tabview
        .frame(minHeight: 265)
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    } //: body
}


// MARK: - Preview

struct FeaturedTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedTabView()
            .previewLayout(.sizeThatFits)
            .background(Color.gray)
    }
}
