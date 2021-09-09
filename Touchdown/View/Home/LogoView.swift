//
//  LogoView.swift
//  Touchdown
//
//  Created by Fahim Rahman on 9/4/21.
//

import SwiftUI

// MARK: - LogoView

struct LogoView: View {
    
    // properties
    
    // body
    var body: some View {
        // hstack
        HStack(spacing: 4, content: {
            Text("Touch".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)
            
            Image("logo-dark")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30, alignment: .center)
            
            Text("Down".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)
        }) //: hstack
    } //: body
}


// MARK: - Preview

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
