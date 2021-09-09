//
//  NavigationBarDetailView.swift
//  Touchdown
//
//  Created by Fahim Rahman on 9/7/21.
//

import SwiftUI

// MARK: - Navigation Bar Detail View

struct NavigationBarDetailView: View {
    
    // properties
    @EnvironmentObject var shop: Shop
    
    // body
    var body: some View {
        // hstack
        HStack(content: {
            // button back
            Button(action: {
                withAnimation(.easeIn) {
                    hapticFeedback.impactOccurred()
                    shop.selectedProduct = nil
                    shop.showingProduct = false
                }
            }, label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
            }) //: button back
            
            Spacer()
            
            // button cart
            Button(action: {
                
            }, label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.white)
            }) //: button cart
            
        }) //: hstack
    } //: body
}



// MARK: - Preview

struct NavigationBarDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
