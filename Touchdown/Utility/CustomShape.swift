//
//  CustomShape.swift
//  Touchdown
//
//  Created by Andre Abtahi on 8/11/21.
//

import SwiftUI

struct CustomShape: Shape {
    func path(in rect: CGRect) -> Path{
        //  MARK: - PROPERTY
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft, .topRight], cornerRadii: CGSize(width: 35, height: 35))
        
        // creates curved line segments on top left and right corner
        return Path(path.cgPath)
    }// END OF PATH FUNCTION
}

struct CustomShape_Previews: PreviewProvider {
    static var previews: some View {
        CustomShape()
            .previewLayout(.fixed(width: 428, height: 120))
            .padding()
    }
}
