//
//  SuggestionView.swift
//  InstagramSwiftUI
//
//  Created by Sandesh on 20/01/20.
//  Copyright © 2020 Sandesh. All rights reserved.
//

import Foundation
import SwiftUI

struct SuggestionVIew: View {
    
    var suggestions : [Story]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: true) {
            
            HStack {
                ForEach((suggestions), id: \.id) { (suggestion) in
                    
                    VStack {
                        ZStack {
                            Image(suggestion.img)
                                .resizable()
                            
                            Circle()
                                .fill(Color.white)
                                .clipShape(Circle())
                                .frame(width: 50, height: 50)
                                .offset(y: 30)
                        }
                        
                        Text(suggestion.text)
                        
                    }.frame(width: 80, height: 150)
                        .cornerRadius(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color(.sRGB, red: 220/255, green: 220/255, blue: 220/255, opacity: 0.5), lineWidth: 1)
                    )
                        .padding(.bottom, 15)
                }
            }
        }
    }
}
