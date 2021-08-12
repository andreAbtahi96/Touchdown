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
                .zIndex(1)
            
            // DETAIL BOTTOM PART
            VStack(alignment: .center, spacing: 0){
                
                // RATING + SIZES
                RatingsSizesDetailView()
                    .padding(.top, -20)
                    .padding(.bottom, 10)
        
                // DESCRIPTION
                ScrollView(.vertical, showsIndicators: false){
                    Text(sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                }// SCROLL
                
                // QUANTITY + FAVOURITE
                QuantityFavoriteDetailView()
                    .padding(.vertical, 10)
                
                // ADD TO CART
                AddToCartDetailView()
                    .padding(.bottom, 20)
                Spacer()
                
            }// VSTACK
            .padding(.horizontal)
            .background(
                Color.white
                    .clipShape(CustomShape())
                    .padding(.top, -105)
            )// BACKGROUND
        }// VSTACK
        .zIndex(0)
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
