//
//  OnBoardingPage.swift
//  HACAKTHON ARITZIA APP
//
//  Created by Shadan Namazi on 2023-01-13.
//

import SwiftUI

struct OnBoadingPage: View {
    
    //@State var showLoginPage: Bool = false
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
            
            
//            .overlay(
//
//
//                Group{
//
//                    if showLoginPage{
//                        LoginPage()
//
//                            .transition(.move(edge: .bottom))
//                            .animation(.easeInOut(duration: 1))
//
//                    }
//                }
//        )
        }
        .sheet(isPresented: $showMainPage) {
                    MainPage()
                }
        
    }
        
}


struct OnBoadingPage_Previews: PreviewProvider {
    static var previews: some View {
        
        OnBoadingPage()
    }
}


extension View{
    func getRect()->CGRect{
        return UIScreen.main.bounds
    }
}
