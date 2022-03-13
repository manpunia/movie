//
//  WebService.swift
//  Movies
//
//  Created by Manish Punia on 13/03/22.
//

import Foundation

class WebService {

    func getApiData<T:Decodable>(requestUrl: URL, resultType:T.Type, completionHandler:@escaping(_ result:T?) -> Void, failure:@escaping (String) -> Void ) {
        URLSession.shared.dataTask(with: requestUrl) { responseData, httpUrlResponse, error in
            
            if let data = responseData, error == nil {
                let decoder = JSONDecoder()
                do {
                    let result  = try decoder.decode(T.self, from: data)
                    completionHandler(result)
                }
                catch let error {
                    print("some went wrong while fetching the data. Error: \(String(describing: error))")
                    failure(String(describing: error))
                }
            }
            
        }.resume()
    }
    

}
