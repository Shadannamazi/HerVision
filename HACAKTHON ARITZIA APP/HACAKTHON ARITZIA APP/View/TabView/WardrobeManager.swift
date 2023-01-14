//
//  CartPage.swift
//  HACAKTHON ARITZIA APP
//
//  Created by Shadan Namazi on 2023-01-13.
//

import SwiftUI

class WardrobeManager: ObservableObject {
    
    @Published private(set) var products: [Product] = []
    @Published private(set) var productNameList: [String] = []
    @Published private(set) var total: Int = 0
    
    func addToWardrobe(product: Product) {
        products.append(product)
        total += 1
        
    }
    
    func removeFromeWardrobe(product: Product) {
        products = products.filter {$0.id != product.id}
        total -= 1
    }
    
    func addToListOfNames(product: Product) {
        productNameList.append(product.name)
        
    }
    
    func removeFromListOfNames(product: Product) {
        productNameList = productNameList.filter {$0 != product.name}
        
        
    }
    
    
}
