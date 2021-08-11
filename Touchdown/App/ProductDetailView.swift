//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Andre Abtahi on 8/10/21.
//

import SwiftUI

struct ProductDetailView: View {
    //  MARK: - PROPERTIES
    
    //  MARK: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 5){
            // NAV BAR
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            
            // HEADER
            HeaderDetailView()
                .padding(.horizontal)
            
            // DETAIL TOP PART
            TopPartDetailView()
                .padding(.horizontal)
            
            // DETAIL BOTTOM PART
            
            // RATING + SIZES
            
            // DESCRIPTION
            
            // QUANTITY + FAVOURITE
            
            // ADD TO CART
            Spacer()
            
        }// VSTACK
        .ignoresSafeArea(.all, edges: .all)
        .background(
            Color(
                red:   sampleProduct.red,
                green: sampleProduct.green,
                blue:  sampleProduct.blue
            )// COLOR
            .ignoresSafeArea(.all,edges: .all)
        )
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
