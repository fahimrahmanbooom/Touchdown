//
//  TitleView.swift
//  Touchdown
//
//  Created by Fahim Rahman on 9/6/21.
//

import SwiftUI

// MARK: - Title View

struct TitleView: View {
    
    // properties
    var title: String
    
    // body
    var body: some View {
        // hstack
        HStack {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.black)
            
            Spacer()
            
        } //: hstack
        .padding(.horizontal, 15)
        .padding(.top, 15)
        .padding(.bottom, 10)
    } //: body
}


// MARK: - Preview

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(title: "Helmet")
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
