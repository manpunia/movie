//
//  Movie.swift
//  Movies
//
//  Created by Manish Punia on 13/03/22.
//

import Foundation

struct Movie:Codable {
    var adult:Bool
    var backdrop:String
    var genres:[Int]
    var id:Int
    var orginalLanguauge:String
    var originaltitle:String
    var overview:String
    var popularity:Double
    var poster:String
    var releaseDate:String
    var title:String
    var video:Bool
    var voteAverage:Double
    var voteCount:Int
    
    
    enum CodingKeys: String, CodingKey {
        case adult = "adult"
        case backdrop = "backdrop_path"
        case genres = "genre_ids"
        case id = "id"
        case orginalLanguauge = "original_language"
        case originaltitle = "original_title"
        case overview = "overview"
        case popularity = "popularity"
        case poster = "poster_path"
        case releaseDate = "release_date"
        case title = "title"
        case video = "video"
        case voteAverage = "vote_average"
        case voteCount = "vote_count"
    }
    
}
/*
{
      "adult": false,
      "backdrop_path": "/5P8SmMzSNYikXpxil6BYzJ16611.jpg",
      "genre_ids": [
        80,
        9648,
        53
      ],
      "id": 414906,
      "original_language": "en",
      "original_title": "The Batman",
      "overview": "In his second year of fighting crime, Batman uncovers corruption in Gotham City that connects to his own family while facing a serial killer known as the Riddler.",
      "popularity": 3748.264,
      "poster_path": "/74xTEgt7R36Fpooo50r9T25onhq.jpg",
      "release_date": "2022-03-01",
      "title": "The Batman",
      "video": false,
      "vote_average": 8,
      "vote_count": 1582
    }
*/
