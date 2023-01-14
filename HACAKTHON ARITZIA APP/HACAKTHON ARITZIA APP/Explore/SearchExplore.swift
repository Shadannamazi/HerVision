//
//  SearchBar.swift
//  HACAKTHON ARITZIA APP
//
//  Created by Shadan Namazi on 2023-01-13.
//

import SwiftUI

//code for the image upload gotten from: https://tutorial101.blogspot.com/2021/12/swiftui-photo-library-image-picker.html


struct SearchExplore: View {
    //var post: Post
    
    @State var searchText = ""
    @State var exploreListNames: [String] = []

    //var columns = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    
    let spacing: CGFloat = 150
    
    @State var shouldShowImagePicker = false
    @State var image: UIImage?
    
    @State private var numberOfRows = 3
    var body: some View {
        
        VStack {
            
            ZStack {
                NavigationView {
                    
                    let columns = Array(
                        repeating: GridItem(.fixed(100), spacing: 30),
                        count: numberOfRows)
                    
                    
                    
                ScrollView {
                        LazyVGrid(columns: columns, spacing: 1) {
                                ForEach(posts, id: \.id) { post in
                                        ExploreProductCard(post: post)
                                        .scaledToFit()
                                        
                                            
                                    
                                }
                            Button {
                                shouldShowImagePicker.toggle()
                            } label: {
                                VStack {
                                    if let image = self.image {
                                        
                                        ZStack(alignment: .bottom) {
                                            Image(uiImage: image)
                                                .resizable()
                                                //.cornerRadius(20)
                                                .frame(width: 120)
                                                //.scaledToFit()
                                                            .padding()
                                            
                                        }
                                        .frame(width: 120, height: 210)
                                        
                                    } else {
                                        Image(systemName: "plus.app")
                                            .font(.system(size: 30))
                                            .padding()
                                            .foregroundColor(Color(.label))
                                    }
                                }
                                
                            }
                            
                            }
                        .scaledToFit()
                        .padding(.horizontal)
                        
                        
                        
                        .searchable(text: $searchText)
                        
                            
                        
                    .navigationTitle("HerVision")
                    .navigationViewStyle(StackNavigationViewStyle())
                    .fullScreenCover(isPresented: $shouldShowImagePicker, onDismiss: nil) {
                        ImagePicker(image: $image)
                            .ignoresSafeArea()
                    }
                    .toolbar{
                        Button {
                            shouldShowImagePicker.toggle()
                        } label: {
                            VStack {
                                Image(systemName: "plus.app")
                                    .font(.system(size: 30))
                                    .padding()
                                    .foregroundColor(Color(.label))
                            }
                            
                        }
                    }
                }
                    
                            
                    .background(Color.white)
                }
            }
        }
        
        
    }
    
  
    
    
    
    var posts: [Post] {
        
        return searchText == "" ? postsList : postsList.filter{
            $0.keyWords.lowercased().contains(searchText.lowercased())
        }
    
    }
    
    struct SearchExplore_Previews: PreviewProvider {
        static var previews: some View {
            SearchExplore()
                
        }
    }
}
