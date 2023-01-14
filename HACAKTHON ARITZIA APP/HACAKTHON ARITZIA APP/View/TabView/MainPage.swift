//
//  MainPage.swift
//  HACAKTHON ARITZIA APP
//
//  Created by Shadan Namazi on 2023-01-13.
//

import SwiftUI

struct MainPage: View {
    @State var selectedTab: Tab = .house
    @StateObject var wardrobeManager = WardrobeManager()
    
    init(){
        UITabBar.appearance().isHidden = true
    }
    var body: some View {
        
        ZStack{
            VStack{
                TabView(selection: $selectedTab){
                    if selectedTab == Tab.house {
                        HomePage()
                    }
//                    if selectedTab == Tab.heart {
//                        LikedPage()
//                    }
                    if selectedTab == Tab.camera {
                        SearchExplore()
                    }
                    if selectedTab == Tab.person {
                        WardrobePage()
                    }
//                    if selectedTab == Tab.cart {
//                        CartPage()
//                    }
                    
                }
                            
            }
            VStack{
                Spacer()
                CustomTab(selectedTab: $selectedTab)
                    .padding(.bottom,0)
            }
            
        }
        
//        VStack{
//            TabView{
//                HomePage()
//                    .tabItem() {
//                        Image(systemName: "house")
//                    }
//
//                LikedPage()
//                    .tabItem() {
//                        Image(systemName: "heart")
//
//                    }
//
//                SearchPage()
//                    .tabItem() {
//                        Image(systemName: "magnifyingglass")
//                    }
//
//                ProfilePage()
//                    .tabItem() {
//                        Image(systemName: "person")
//
//                    }
//
//                CartPage()
//                    .tabItem() {
//                        Image(systemName: "cart.fill")
//
//                    }
//            }
//            .padding(.bottom,0)
//        }
//        .background(Color.black)
//
//
//
    }
}
    

struct MainPage_Previews: PreviewProvider {
    static var previews: some View {
        MainPage()
            .environmentObject(WardrobeManager())
    }
}
