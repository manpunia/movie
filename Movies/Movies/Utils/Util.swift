//
//  Util.swift
//  Movies
//
//  Created by Manish Punia on 13/03/22.
//

import Foundation

class Util {
    static func getImageURL(_ image:String) -> URL? {
        return URL(string: "https://image.tmdb.org/t/p/w500"+image)
    }
}
