//
//  Movie.swift
//  NetflixClone
//
//  Created by Yarkın Gazibaba on 25.04.2022.
//

import Foundation


struct TrendingTitleResponse: Codable {
    let results: [Title]
}

struct Title: Codable {
    
    let original_language:String?
    let original_title:String?
    let poster_path:String?
    let vote_average:Double?
    let vote_count:Int?
    let overview:String?
    let release_date:String?
    let title:String?
    let id:Int?
    let media_type: String?
    let original_name: String?
}


