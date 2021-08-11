//
//  HeaderDetailView.swift
//  Touchdown
//
//  Created by Andre Abtahi on 8/10/21.
//

import SwiftUI

struct HeaderDetailView: View {
    //  MARK: - PROPERTIES
    
    //  MARK: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 6){
            Text("Protective Gear")
            
            Text(sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.black)
        }// VSTACK
        .foregroundColor(.white)
    }// VIEW
}

struct HeaderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
