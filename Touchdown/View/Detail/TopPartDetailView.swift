//
//  TopPartDetailView.swift
//  Touchdown
//
//  Created by Andre Abtahi on 8/10/21.
//

import SwiftUI

struct TopPartDetailView: View {
    //  MARK: - PROPERTIES
    @State private var isAnimating: Bool = false
    @EnvironmentObject var shop: Shop
    
    //  MARK: - BODY
    var body: some View {
        HStack(alignment: .center, spacing: 6){
            // PRICE
            VStack(alignment: .leading, spacing: 6){
                Text("Price")
                    .fontWeight(.semibold)
                
                Text(shop.selectedProduct?.formattedPrice ?? sampleProduct.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35, anchor: .leading)
            }// VSTACK
            .offset(y: isAnimating ? -50 : -75)
            
            Spacer()
            
            // PHOTO
            Image(shop.selectedProduct?.image ?? sampleProduct.image)
                .resizable()
                .scaledToFit()
                .offset(y: isAnimating ? 0 : -35)
        }// HSTACK
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.75)){
                isAnimating.toggle()
            }// ANIMATION
        })// ON APPEAR
    }
}

struct TopPartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TopPartDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
