//
//  FeaturedItemView.swift
//  Touchdown
//
//  Created by Fahim Rahman on 9/4/21.
//

import SwiftUI

// MARK: - Featured Item View
struct FeaturedItemView: View {
    
    // properties
    let player: PlayerModel
    
    // body
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    } //: body
}

 
// MARK: - Preview

struct FeaturedItemView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedItemView(player: players.first!)
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
