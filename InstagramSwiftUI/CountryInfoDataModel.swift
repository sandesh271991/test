//
//  CountryInfoDataModel.swift
//  Sandesh-Assignment
//
//  Created by sandesh sardar on 05/07/19.
//  Copyright © 2019 sandesh sardar. All rights reserved.
//

import Foundation

struct CountryInfoDataModel: Codable {
    var id: Int?
    var title: String?
    var description: String?
    var imageHref: String?
    enum CodingKeys: String, CodingKey {
        case id
        case title
        case description
        case imageHref
    }
}
