//
//  SectionView.swift
//  Touchdown
//
//  Created by Fahim Rahman on 9/5/21.
//

import SwiftUI

// MARK: - Section View

struct SectionView: View {
    
    // properties
    @State var rotateClockwise: Bool
    
    // body
    var body: some View {
        // vstack
        VStack(spacing: 0) {
            
            Spacer()
            
            Text("Categories".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.black.opacity(0.6))
                .rotationEffect(Angle(degrees: rotateClockwise ? 90 : -90))
            
            Spacer()
            
        } //: vstack
        .background(colorGray.cornerRadius(12))
        .frame(width: 85)
    } //: body
}


// MARK: - Preview

struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView(rotateClockwise: false)
            .previewLayout(.fixed(width: 120, height: 240))
            .padding()
            .background(colorBackground)
    }
}
