//
//  RatingsSizesDetailView.swift
//  Touchdown
//
//  Created by Fahim Rahman on 9/7/21.
//

import SwiftUI

// MARK: - Rating Sizes Detail View

struct RatingsSizesDetailView: View {
    
    // properties
    let sizes: [String] = ["XS", "S", "M", "L", "XL"]
    
    // body
    var body: some View {
        // hstack
        HStack(alignment: .top, spacing: 3, content: {
            
            // ratings
            // vstack
            VStack(alignment: .leading, spacing: 3, content: {
                
                Text("Ratings")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(.black.opacity(0.6))
                
                // hstack
                HStack(alignment: .center, spacing: 3, content: {
                    // foreach
                    ForEach(1...5, id: \.self) { item in
                        // button
                        Button(action: {
                            
                        }, label: {
                            Image(systemName: "star.fill")
                                .frame(width: 28, height: 28)
                                .background(colorGray.cornerRadius(5))
                                .foregroundColor(.black.opacity(0.6))
                        }) //: button
                    } //: foreach
                }) //: hstack
            }) //: vstack
            
            Spacer()
            
            // vstack
            VStack(alignment: .trailing, spacing: 3, content: {
                
                Text("Sizes")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(.black.opacity(0.6))
                
                // hstack
                HStack(alignment: .center, spacing: 5, content: {
                    // foreach
                    ForEach(sizes, id: \.self) { size in
                        // button
                        Button(action: {
                            
                        }, label: {
                            Text(size)
                                .font(.footnote)
                                .fontWeight(.heavy)
                                .foregroundColor(.black.opacity(0.6))
                                .frame(width: 28, height: 28)
                                .background(Color.white.cornerRadius(5))
                                .background(
                                    RoundedRectangle(cornerRadius: 5)
                                        .stroke(Color.black.opacity(0.6), lineWidth: 2)
                                )
                        }) //: button
                    } //: foreach
                }) //: hstack
            }) //: vstack
        }) //: hstack
    } //: body
}



// MARK: - Preview
struct RatingsSizesDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RatingsSizesDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
