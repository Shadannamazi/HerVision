//
//  ProductCrad.swift
//  HACAKTHON ARITZIA APP
//
//  Created by Shadan Namazi on 2023-01-13.
//

import SwiftUI

struct ExploreProductCard: View {
    
    var post: Post
    var body: some View {
        ZStack(alignment: .topTrailing){
            ZStack(alignment: .bottom) {
                Image(post.image)
                    .resizable()
                    //.cornerRadius(20)
                    .frame(width: 120)
                    .scaledToFit()
                                .padding()
                
            }
            .frame(width: 120, height: 210)
            
            
            .font(.system(size: 22))
        }
        
        
        
    }
}

struct ExploreProductCard_Previews: PreviewProvider {
    static var previews: some View {
        ExploreProductCard(post: postsList[0])
            
    }
}
