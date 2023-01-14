//
//  ProductRow.swift
//  HACAKTHON ARITZIA APP
//
//  Created by Shadan Namazi on 2023-01-13.
//

import SwiftUI

struct ProductRow: View {
    @EnvironmentObject var wardrobeManager: WardrobeManager
    @State private var showRecommendationPage = false
    var product: Product
    var body: some View {
        
        ZStack {
            HStack(spacing: 20) {
                Image(product.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50)
                    //.cornerRadius(10)
                VStack(alignment: .leading, spacing: 10) {
                    Text(product.name)
                        .bold()
                        
                }
                
                Spacer()
                Image(systemName: "trash")
                    .foregroundColor(.red)
                    .onTapGesture {
                        wardrobeManager.removeFromeWardrobe(product: product)
                    }
                Image(systemName: "arrow.right")
                    .foregroundColor(.black)
                    .onTapGesture {
                        self.showRecommendationPage.toggle()
                    }
                
            }
            .padding(.horizontal)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .sheet(isPresented: $showRecommendationPage) {
                    RecommendationPage(product: product)
                }
        
        
    }
}

struct ProductRow_Previews: PreviewProvider {
    static var previews: some View {
        ProductRow(product: productList[3])
            .environmentObject(WardrobeManager())
    }
}
