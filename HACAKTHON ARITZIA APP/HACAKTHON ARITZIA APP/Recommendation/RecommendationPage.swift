//
//  RecommendationPage.swift
//  HACAKTHON ARITZIA APP
//
//  Created by Shadan Namazi on 2023-01-14.
//

import SwiftUI

struct RecommendationPage: View {
    @EnvironmentObject var wardrobeManager: WardrobeManager
    var product: Product
    var body: some View {
        VStack{
            if product.type == "top" {
                VStack{
                    ZStack(alignment: .bottom) {
                        Image(product.image)
                            .resizable()
                            .cornerRadius(20)
                            .frame(width: 275)
                            .scaledToFit()
                        VStack(alignment: .leading){
                            Text(product.name)
                                .bold()
                            
                        }
                        .padding()
                        .frame(width: 275,alignment: .leading)
                        .background(.ultraThinMaterial)
                    }
                    .frame(width: 275, height: 375)
                    .padding(.top,50)
                    
                    Spacer()
                    HStack{
                        ScrollView(.horizontal){
                            
                            HStack {
                                ForEach(productList, id: \.id) { product in
                                    if product.type == "bottom" {
                                        ZStack(alignment: .bottom) {
                                            Image(product.image)
                                                .resizable()
                                                .cornerRadius(20)
                                                .frame(width: 275)
                                                .scaledToFit()
                                            VStack(alignment: .leading){
                                                Text(product.name)
                                                    .bold()
                                                
                                            }
                                            .padding()
                                            .frame(width: 275,alignment: .leading)
                                            .background(.ultraThinMaterial)
                                        }
                                        .frame(width: 275, height: 375)
                                        .padding()
                                    }
                                    
                                }
                                
                            }
                    }
                    
                        
                    }
                }
            } else {
                VStack{
                    HStack{
                        ScrollView(.horizontal){
                            
                            HStack {
                                ForEach(productList, id: \.id) { product in
                                    if product.type == "top" {
                                        ZStack(alignment: .bottom) {
                                            Image(product.image)
                                                .resizable()
                                                .cornerRadius(20)
                                                .frame(width: 275)
                                                .scaledToFit()
                                            VStack(alignment: .leading){
                                                Text(product.name)
                                                    .bold()
                                                
                                            }
                                            .padding()
                                            .frame(width: 275,alignment: .leading)
                                            .background(.ultraThinMaterial)
                                        }
                                        .frame(width: 275, height: 350)
                                        
                                    }
                                    
                                }
                                
                                
                            }
                            
                    }
                    
                        
                    }
                    Spacer()
                    ZStack(alignment: .bottom) {
                        Image(product.image)
                            .resizable()
                            .cornerRadius(20)
                            .frame(width: 275)
                            .scaledToFit()
                        VStack(alignment: .leading){
                            Text(product.name)
                                .bold()
                            
                            
                        }
                        .padding()
                        .frame(width: 275,alignment: .leading)
                        .background(.ultraThinMaterial)
                    }
                    .frame(width: 275, height: 350)
                    .padding()
                    
                }
                .padding(.bottom,100)
                .padding(.top,100)
                
                
            }
        }
    }
}

struct RecommendationPage_Previews: PreviewProvider {
    static var previews: some View {
        RecommendationPage(product: productList[7])
            .environmentObject(WardrobeManager())
    }
}
