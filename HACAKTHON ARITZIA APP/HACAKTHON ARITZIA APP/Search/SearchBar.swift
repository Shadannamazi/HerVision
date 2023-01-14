//
//  SearchBar.swift
//  HACAKTHON ARITZIA APP
//
//  Created by Shadan Namazi on 2023-01-13.
//

import SwiftUI

struct SearchBar: View {
    @EnvironmentObject var wardrobeManager: WardrobeManager
    @State var searchText = ""
    @State var productsListNames: [String] = []
    var columns = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    
    
    var body: some View {
        NavigationView {
            
                
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                        ForEach(products, id: \.id) { product in
                                ProductCard(product: product)
                                    .environmentObject(wardrobeManager)
                            
                        }
                    }
                    .padding()
                
                .searchable(text: $searchText)
            .navigationTitle("Clothing")
            }
        }
        
    }
    
    
    
    var products: [Product] {
        if wardrobeManager.products.count > 0 {
        
        
            }
        return searchText == "" ? productList : productList.filter{
            $0.name.lowercased().contains(searchText.lowercased())
        }
    
    }
    
    struct SearchBar_Previews: PreviewProvider {
        static var previews: some View {
            SearchBar()
                .environmentObject(WardrobeManager())
        }
    }
}
