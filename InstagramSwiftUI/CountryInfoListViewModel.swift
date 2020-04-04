//
//  CountryInfoListViewModel.swift
//  InstagramSwiftUI
//
//  Created by Sandesh on 28/01/20.
//  Copyright © 2020 Sandesh. All rights reserved.
//

import Combine

class CountryInfoListViewModel: ObservableObject {
    
    init() {
        load()
    }
    
    @Published var countryInfo = CountryInfoListDataModel()
    
    var header: String {
        
        countryInfo.title ?? "No Header"
    }
    
    var countryInfoList: [CountryInfoDataModel]{
        
        countryInfo.info ?? []
    }

    func load() {
        
        Webservice.shared.getData(with: webserviceURL) { (countryData, error) in
            if error != nil {
                return
            }
            guard let countryData = countryData else {return}
            self.countryInfo = countryData
            
            print(self._countryInfo)
        }
    }
}
