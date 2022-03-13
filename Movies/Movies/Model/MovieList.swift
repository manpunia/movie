//
//  MovieList.swift
//  Movies
//
//  Created by Manish Punia on 13/03/22.
//

import Foundation

struct MovieList:Codable {
    
    var dates:DateRange
    var page:Int
    var results:[Movie]
    
}
