//
//  HomePage.swift
//  HACAKTHON ARITZIA APP
//
//  Created by Shadan Namazi on 2023-01-13.
//

import SwiftUI

struct HomePage: View {
    @EnvironmentObject var wardrobeManager: WardrobeManager
    var columns = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    var body: some View {
        
        SearchBar()
//            NavigationView {
//                ScrollView{
//                    ZStack{
//                        SearchBar()
//                    }
//                    HStack(spacing: 15){
//                        Image(systemName: "magnifyingglass")
//                            .foregroundColor(.gray)
//                        TextField("Search", text: Binding<String>.constant(""))
//
//                    }
//                    .padding(.vertical,12)
//                    .padding(.horizontal)
//                    .background(Capsule().strokeBorder(Color.gray,lineWidth: 0.8))
//                    .padding()
//
//                    LazyVGrid(columns: columns, spacing: 20) {
//                        ForEach(productList, id: \.id) { product in
//                            ProductCard(product: product)
//                                .environmentObject(wardrobeManager)
//
//                        }
//                    }
//                    .padding()
//                }
//
//            }
//
    
//            ScrollView(.vertical, showsIndicators: false) {
//                VStack(spacing: 15){
//                    HStack(spacing: 15){
//                        Image(systemName: "magnifyingglass")
//                            .foregroundColor(.gray)
//                        TextField("Search", text: Binding<String>.constant(""))
//                    }
//                    .padding(.vertical,12)
//                    .padding(.horizontal)
//                    .background(Capsule().strokeBorder(Color.gray,lineWidth: 0.8))
//
//                }
//                .padding(.vertical)
//                .padding(.horizontal)
//            }
        
    }
        
        
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
            .environmentObject(WardrobeManager())
    }
}
