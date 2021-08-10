//
//  ContentView.swift AKA storefront
//  Touchdown
//
//  Created by Andre Abtahi on 8/6/21.
//

import SwiftUI

struct ContentView: View {
    //  MARK: - PROPERTIES
    
    //  MARK: - BODY
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                NavigationBarView()
                    .padding(.horizontal, 15)
                    .padding(.bottom)
                    .padding(.top,     UIApplication.shared.windows.first?.safeAreaInsets.top)
                    .background(Color.white)
                    .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5 )
                
                ScrollView(.vertical, showsIndicators: false, content:{
                    VStack(spacing: 0){
                        
                        FeaturedTabView()
                            .padding(.vertical, 20)
                            .frame(height: UIScreen.main.bounds.width / 1.475)
                        
                        CategoryGridView()
                        
                        TitleView(title: "Helmets")
                        
                        LazyVGrid(columns: gridLayout, spacing: 15, content: {
                            ForEach(products){ product in
                                ProductItemView(product: product)
                            }// LOOP
                        })// LAZY GRID
                        .padding(15)
                        
                        FooterView()
                            .padding(.horizontal)
                    }// VSTACK
                })// SCROLL

                
            }// VSTACK
            .background(colorBackground.ignoresSafeArea(.all, edges: .all))
        }// ZSTACK
        .ignoresSafeArea(.all, edges: .top)
    }
}

//  MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
