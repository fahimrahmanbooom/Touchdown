//
//  NavigationBarView.swift
//  Touchdown
//
//  Created by Fahim Rahman on 9/4/21.
//

import SwiftUI

// MARK: - Navigation Bar View

struct NavigationBarView: View {
    
    // properties
    @State private var isAnimated: Bool = false
    
    // body
    var body: some View {
        // hstack
        HStack(content: {
            // button magnifying
            Button(action: {
                
            }, label: {
                Image(systemName: "magnifyingglass")
                    .font(.title)
                    .foregroundColor(.black)
            }) //: button magnifying
            
            Spacer()
            
            LogoView()
                .opacity(isAnimated ? 1 : 0)
                .offset(x: 0, y: isAnimated ? 0 : -25)
                .onAppear(perform: {
                    withAnimation(.easeOut(duration: 0.5)) {
                        isAnimated.toggle()
                    }
                })
            
            Spacer()
            
            // button
            Button(action: {
                
            }, label: {
                // zstack
                ZStack {
                    Image(systemName: "cart")
                        .font(.title)
                        .foregroundColor(.black)
                    
                    Circle()
                        .fill(Color.red)
                        .frame(width: 14, height: 14, alignment: .center)
                        .offset(x: 13, y: -10.0)
                } //: zstack
            }) //: button
        }) //: hstack
    } //: body
}


// MARK: - Preview

struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
