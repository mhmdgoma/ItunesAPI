//
//  AlbumBase.swift
//  ItunesAPI
//
//  Created by Gom3a on 3/28/18.
//  Copyright © 2018 Gom3a. All rights reserved.
//
import Foundation
import iTunesSearchAPI

struct AlbumBase : Codable {
    let resultCount : Int?
    let results : [Results]?
    static let itunesClient = iTunes(session: URLSession.shared, debug: true)
    
    public typealias ResponseHandler = (AlbumBase) -> Void
    
    enum CodingKeys: String, CodingKey {
        
        case resultCount = "resultCount"
        case results = "results"
    }
    
    static func fetchAlbmus(keywork:String , limit:Int = 5, completion: @escaping ResponseHandler){
        let options = Options(country: .unitedStates,
                              limit: limit,
                              language: .english,
                              includeExplicitContent: true)
        
        itunesClient.search(for:keywork, ofType: .music(.movie), options: options) { result in
            if let dic = result.value as? Dictionary<String, Any>{
                do{
                    let jsonData = try JSONSerialization.data(withJSONObject: dic, options: .prettyPrinted)
                    let jsonDecoder = JSONDecoder()
                    let responseModel = try jsonDecoder.decode(AlbumBase.self, from: jsonData)
                    completion(responseModel)
                }catch{
                    
                }
            }
        }
    }
    
    //Mark:- Sort
    func sorted()->[Results]? {
        return results?.sorted(by: { ($0.artistName ?? "" ) <  ($1.artistName ?? "" ) })
    }
}

