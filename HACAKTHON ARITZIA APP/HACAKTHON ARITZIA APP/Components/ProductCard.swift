//
//  ProductCrad.swift
//  HACAKTHON ARITZIA APP
//
//  Created by Shadan Namazi on 2023-01-13.
//

import SwiftUI

struct ProductCard: View {
    @EnvironmentObject var wardrobeManager: WardrobeManager
    var product: Product
    @State var isAdded : Bool = false
    var body: some View {
        ZStack(alignment: .topTrailing){
            ZStack(alignment: .bottom) {
                Image(product.image)
                    .resizable()
                    //.cornerRadius(20)
                    .frame(width: 180)
                    .scaledToFit()
                VStack(alignment: .leading){
                    Text(product.name)
                        .bold()
                    
                }
                .padding()
                .frame(width: 180,alignment: .leading)
                .background(.ultraThinMaterial)
                
            }
            .frame(width: 180, height: 250)
            
            Button {
                self.isAdded.toggle()
                wardrobeManager.addToWardrobe(product: product)
                
                
            } label: {
                Image(systemName: self.isAdded == true ? "plus.app.fill" : "plus.app")
                
            }
            .padding(10)
            .font(.system(size: 22))
        }
        
        
        
    }
}

struct ProductCard_Previews: PreviewProvider {
    static var previews: some View {
        ProductCard(product: productList[0])
            .environmentObject(WardrobeManager())
    }
}
