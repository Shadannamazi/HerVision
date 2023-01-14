//
//  StartingPage.swift
//  HACAKTHON ARITZIA APP
//
//  Created by Shadan Namazi on 2023-01-14.
//

import SwiftUI

struct StartingPage: View {
    //@State private var showRecommendationPage = false
    @State private var showMainPage = false
    var body: some View {
        ZStack {
            
                VStack(alignment: .leading){
                    Text("ARITZIA").font(.system(size: 55))
                        .foregroundColor(.white)
                    Text("HerVision").font(.system(size: 25))
                        .foregroundColor(.white)
                        .italic()
                    
                    
                    
                    
                    
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.black)
                .onTapGesture {
                    self.showMainPage.toggle()
                }
                
                
                
                
            
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .sheet(isPresented: $showMainPage) {
                    MainPage()
                .environmentObject(WardrobeManager())
                }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        
    }
}

struct StartingPage_Previews: PreviewProvider {
    static var previews: some View {
        StartingPage()
    }
}
