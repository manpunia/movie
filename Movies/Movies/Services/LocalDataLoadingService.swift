//
//  LocalDataLoadingService.swift
//  Movies
//
//  Created by Manish Punia on 13/03/22.
//

import Foundation

class LocalDataLoadingService
{
     static func loadJson<T:Decodable>(fileName: String, type:T.Type) -> T? {
       let decoder = JSONDecoder()
       guard
            let url = Bundle.main.url(forResource: fileName, withExtension: "json"),
            let data = try? Data(contentsOf: url)
       else {
            return nil
       }
        
        do {
            let obj =  try decoder.decode(T.self, from: data)
            return obj
        } catch let error {
            print(error)
        }
       return nil
    }
}
