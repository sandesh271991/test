//
//  StoryView.swift
//  InstagramSwiftUI
//
//  Created by Sandesh on 17/01/20.
//  Copyright © 2020 Sandesh. All rights reserved.
//

import SwiftUI

struct StoryView: View {
    
    var stories: [Story]
    
    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: true) {
            
            HStack {
                
                ForEach((stories), id: \.id) {(story) in
                    
                    VStack {
                        ZStack {
                            
                            Circle()
                                .fill(Color.init(red: 193/255, green: 53/255, blue: 132/255))
                                .clipShape(Circle())
                                .frame(width: 64.0, height: 64.0)
                            
                            Circle()
                                .fill(Color.white)
                                .clipShape(Circle())
                                .frame(width: 60, height: 60)
                            
                            Image(story.img)
                                .resizable()
                                .scaledToFill()
                                .clipShape(Circle())
                                .frame(width: 56, height: 56)
                        }
                        
                        Text(story.text)
                    }
                }
            }
        }
    }
}


