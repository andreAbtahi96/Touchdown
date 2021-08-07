//
//  LogoView.swift
//  Touchdown
//
//  Created by Andre Abtahi on 8/7/21.
//
//  Testing github connection
import SwiftUI

struct LogoView: View {
    //  MARK: - PROPERTIES
        
    //  MARK: - BODY
    var body: some View {
        HStack(spacing: 4){
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
                .fontWeight(.bold)
                .foregroundColor(.black)
        }// HSTACK
    }
}

//  MARK: - PREVIEW
struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
