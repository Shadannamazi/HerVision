//
//  WardrobePage.swift
//  HACAKTHON ARITZIA APP
//
//  Created by Shadan Namazi on 2023-01-13.
//

import SwiftUI

struct WardrobePage: View {
    @EnvironmentObject var wardrobeManager: WardrobeManager
    var body: some View {
        
        ScrollView {
            if wardrobeManager.products.count > 0 {
                ForEach(wardrobeManager.products, id: \.id) { product in
                    ProductRow(product: product)
                        
                    
                }
                
                HStack {
                    Text("Total Number of Items:")
                        .bold()
                        .padding()
                    Spacer()
                    Text("\(wardrobeManager.total)")
                        .padding()
                }
                .padding()
            } else {
                Text("Your wardrobe is empty")
            }
        }
        .navigationTitle(Text("My Wardrobe"))
        .padding(.top)
    }
}

struct WardrobePage_Previews: PreviewProvider {
    static var previews: some View {
        WardrobePage()
            .environmentObject(WardrobeManager())
    }
}
