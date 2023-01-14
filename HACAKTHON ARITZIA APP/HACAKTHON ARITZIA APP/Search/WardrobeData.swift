//
//  WardrobeData.swift
//  HACAKTHON ARITZIA APP
//
//  Created by Shadan Namazi on 2023-01-14.
//

import SwiftUI

struct WardrobeData: View {
    @EnvironmentObject var wardrobeManager: WardrobeManager
    var body: some View {
        if wardrobeManager.products.count > 0 {
            ForEach(wardrobeManager.products, id: \.id) { product in
                wardrobeManager.listOfNames(product: <#T##Product#>)
                
            }
    }
}

struct WardrobeData_Previews: PreviewProvider {
    static var previews: some View {
        WardrobeData()
            .environmentObject(WardrobeManager())
    }
}
