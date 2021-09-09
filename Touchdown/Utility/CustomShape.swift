//
//  CustomShape.swift
//  Touchdown
//
//  Created by Fahim Rahman on 9/7/21.
//

import SwiftUI

// MARK: - Custom Shape

struct CustomShape: Shape {
    // path
    func path(in rect: CGRect) -> Path {
        
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft, .topRight], cornerRadii: CGSize(width: 35, height: 35))
        
        return Path(path.cgPath)
    }
}


// MARK: - Preview

struct CustomShapeView_Previews: PreviewProvider {
    static var previews: some View {
        CustomShape()
            .previewLayout(.fixed(width: 428, height: 120))
            .padding()
    }
}
