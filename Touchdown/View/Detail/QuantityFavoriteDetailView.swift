//
//  QuantityFavoriteDetailView.swift
//  Touchdown
//
//  Created by Andre Abtahi on 8/11/21.
//

import SwiftUI

struct QuantityFavoriteDetailView: View {
    //  MARK: - PROPERTIES
    @State private var counter: Int = 0
    @State private var pressed: Bool = false
    //  MARK: - BODY
    var body: some View {
        HStack(alignment: .center, spacing: 6){
            Button(action: {
                if(counter > 0){
                    counter -= 1
                }
            }, label: {
                Image(systemName: "minus.circle")
            })
            
            Text("\(counter)")
                .fontWeight(.semibold)
                .frame(minWidth: 36)
            
            Button(action: {
                if(counter < 100){
                    counter += 1
                }
            }, label: {
                Image(systemName: "plus.circle")
            })
            
            Spacer()
            
            Button(action: {
                pressed.toggle()
            }, label: {
                
                if(pressed){
                Image(systemName: "heart.circle")
                    .foregroundColor(.pink)
                    
                }else{
                    Image(systemName: "heart.circle")
                        .foregroundColor(.gray)
                        .opacity(0.5)
                }
            })
        }// HSTACK
        .font(.system(.title, design: .rounded))
        .foregroundColor(.black)
        .imageScale(.large)
    }
}

struct QuantityFavoriteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        QuantityFavoriteDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
