//
//  ContentView.swift
//  InstagramSwiftUI
//
//  Created by Sandesh on 17/01/20.
//  Copyright © 2020 Sandesh. All rights reserved.
//

import SwiftUI
import Combine
import Foundation

 

struct ContentView: View {

    @ObservedObject var fetcher = CountryInfoListViewModel()
    
    var posts: [Post] = [
        Post(id: 0, userName: "dogstagram", text: "Hanging out with cute dog in the park😍 \nDo you think I’m cute?🐶 Thumbs up if you think I am cute!💞", profileImageName: "camera", imageName: "camera"),
        Post(id: 1, userName: "lovely_pubby", text: "Sunday mooood 🌙", profileImageName: "camera", imageName: "camera"),
        Post(id: 2, userName: "Ilovemydog", text: "You’re such a cute pup and this post is beautiful 🐶", profileImageName: "camera", imageName: "camera")
    ]
    
    let stories: [Story] = [
        Story(id: 0, img: "camera", text: "sandesh"),
        Story(id: 1, img: "camera", text: "abc"),
        Story(id: 2, img: "camera", text: "xyz"),
        Story(id: 3, img: "camera", text: "pqr"),
        Story(id: 4, img: "camera", text: "pnq"),
        Story(id: 5, img: "camera", text: "fdg")
    ]
    
    
    
    @State var text = "Sardar"
    
    var body: some View {
        
        // stories list list
        NavigationView {
            List {
                
                Button(action: {
                    self.text =  "\(self.fetcher.countryInfoList[0].id!)"
                    
                }) {
                    HStack {
                        Image(systemName: "trash")
                            .font(.title)
                        Text(text)
                            .fontWeight(.semibold)
                            .font(.title)
                    }
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.red)
                    .cornerRadius(40)
                }
                StoryView(stories: self.stories)
                PostView(postss: self.posts)
                SuggestionVIew(suggestions: self.stories)
            }
            .navigationBarTitle("Instagram")
                .navigationBarItems(trailing: Button("Add", action: {
                    
                    })
                    .accentColor(.red)
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//#if DEBUG
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        Group {
//            ContentView()
//                .environment(\.sizeCategory, .accessibilityExtraExtraExtraLarge)
//            ContentView()
//                .environment(\.colorScheme, .dark)
//            NavigationView {
//                ContentView()
//            }
//        }
//    }
//}
//#endif\
