//
//  CountryInfoViewModel.swift
//  InstagramSwiftUI
//
//  Created by Sandesh on 28/01/20.
//  Copyright © 2020 Sandesh. All rights reserved.
//

import Foundation

class CountryInfoViewModel: Identifiable {
    
    var countryInfoData: CountryInfoDataModel?
    
    var id = UUID()
    
    var title: String {
        
        return countryInfoData?.title ?? "No title"
    }
    
    var description:String {
        return countryInfoData?.description ?? "No Description"
    }
    
    var imageHrefUrl: URL? {
        if let imgHrefUrl = countryInfoData?.imageHref {
            // To convert string into URL
            if let url = URL.init(string: imgHrefUrl) {
                return url
            }
        }
        return nil
    }
    
    
    init(countryInfoData: CountryInfoDataModel) {
        self.countryInfoData = countryInfoData
    }
    
    
}
