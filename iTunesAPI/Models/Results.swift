/*
 Copyright (c) 2018 Swift Models Generated from JSON powered by http://www.json4swift.com
 
 Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar
 
 */
//
//  Results.swift
//  ItunesAPI
//
//  Created by Gom3a on 3/28/18.

import Foundation

struct Results : Codable, CustomStringConvertible, Comparable {
    
    var description: String { return artistName ?? "" }
    
    let wrapperType : String?
    let kind : String?
    let collectionId : Int?
    let trackId : Int?
    let artistName : String?
    let collectionName : String?
    let trackName : String?
    let collectionCensoredName : String?
    let trackCensoredName : String?
    let collectionArtistId : Int?
    let collectionArtistViewUrl : String?
    let collectionViewUrl : String?
    let trackViewUrl : String?
    let previewUrl : String?
    let artworkUrl30 : String?
    let artworkUrl60 : String?
    let artworkUrl100 : String?
    let collectionPrice : Double?
    let trackPrice : Double?
    let trackRentalPrice : Double?
    let collectionHdPrice : Double?
    let trackHdPrice : Double?
    let trackHdRentalPrice : Double?
    let releaseDate : String?
    let collectionExplicitness : String?
    let trackExplicitness : String?
    let discCount : Int?
    let discNumber : Int?
    let trackCount : Int?
    let trackNumber : Int?
    let trackTimeMillis : Int?
    let country : String?
    let currency : String?
    let primaryGenreName : String?
    let contentAdvisoryRating : String?
    let longDescription : String?
    let shortDescription : String?
    
    
    enum CodingKeys: String, CodingKey {
        
        case wrapperType = "wrapperType"
        case kind = "kind"
        case collectionId = "collectionId"
        case trackId = "trackId"
        case artistName = "artistName"
        case collectionName = "collectionName"
        case trackName = "trackName"
        case collectionCensoredName = "collectionCensoredName"
        case trackCensoredName = "trackCensoredName"
        case collectionArtistId = "collectionArtistId"
        case collectionArtistViewUrl = "collectionArtistViewUrl"
        case collectionViewUrl = "collectionViewUrl"
        case trackViewUrl = "trackViewUrl"
        case previewUrl = "previewUrl"
        case artworkUrl30 = "artworkUrl30"
        case artworkUrl60 = "artworkUrl60"
        case artworkUrl100 = "artworkUrl100"
        case collectionPrice = "collectionPrice"
        case trackPrice = "trackPrice"
        case trackRentalPrice = "trackRentalPrice"
        case collectionHdPrice = "collectionHdPrice"
        case trackHdPrice = "trackHdPrice"
        case trackHdRentalPrice = "trackHdRentalPrice"
        case releaseDate = "releaseDate"
        case collectionExplicitness = "collectionExplicitness"
        case trackExplicitness = "trackExplicitness"
        case discCount = "discCount"
        case discNumber = "discNumber"
        case trackCount = "trackCount"
        case trackNumber = "trackNumber"
        case trackTimeMillis = "trackTimeMillis"
        case country = "country"
        case currency = "currency"
        case primaryGenreName = "primaryGenreName"
        case contentAdvisoryRating = "contentAdvisoryRating"
        case longDescription = "longDescription"
        case shortDescription = "shortDescription"
    }
    
    static func ==(lhs: Results, rhs: Results) -> Bool {
        return lhs.artistName == rhs.artistName
    }
    
    static func <(lhs: Results, rhs: Results) -> Bool {
        return (lhs.artistName ?? "")  < (rhs.artistName ?? "")
    }
    
}

