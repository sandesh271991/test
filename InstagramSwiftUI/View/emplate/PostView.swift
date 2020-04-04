//
//  PostView.swift
//  InstagramSwiftUI
//
//  Created by Sandesh on 17/01/20.
//  Copyright © 2020 Sandesh. All rights reserved.
//

import SwiftUI


struct PostView: View {
    
    var postss: [Post]
    @ObservedObject var fetcher = CountryInfoListViewModel()

    
    
    var body: some View {
        ForEach((postss), id: \.id) {post in
            
            //---------- create Vsatck to show POST  (start) -------------
            VStack {
                
                //1 : to show profile image and text
                HStack {
                    
                    Image(post.profileImageName)
                        .resizable()
                        .clipShape(Circle())
                        .frame(width: 50, height: 50)
                    
                    Text(post.userName)
                        .font(.headline)
                }
                
                //2 : to show big pics
                Image(post.imageName)
                    .resizable()
                    .scaledToFill()
                    .clipped()
                
                Text(post.text)

                
            }
        }
        //---------- create Vsatck to show POST  (end) -------------
        
    }
}

