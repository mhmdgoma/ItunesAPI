//
//  DetailsViewController.swift
//  ItunesAPI
//
//  Created by Gom3a on 3/28/18.
//  Copyright © 2018 Gom3a. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    var data:Results?
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var labelPrice: UILabel!
    @IBOutlet weak var labelLongDescription: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let album = data{
            bindViews(album: album)
        }
    }
    
    func bindViews(album:Results){
        self.title = album.artistName ?? ""
        labelTitle.text = album.artistName ?? ""
        labelPrice.text =  "$\(album.collectionPrice ?? 0)"
        labelLongDescription.text = album.longDescription ?? ""
        
        let imageUrlString =  album.artworkUrl100?.replacingOccurrences(of: "100x100", with: "400x600")
        imageView.setWithUrl(imageUrlString: imageUrlString ?? "")
    }
}
