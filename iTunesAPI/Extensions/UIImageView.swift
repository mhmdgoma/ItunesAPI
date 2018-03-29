//
//  UIImageView.swift
//  ItunesAPI
//
//  Created by Gom3a on 3/28/18.
//  Copyright © 2018 Gom3a. All rights reserved.
//

import Foundation
import UIKit
import Kingfisher

extension UIImageView {
    
    func setWithUrl(imageUrlString:String){
        self.kf.indicatorType = .activity
        self.layer.cornerRadius = 3
        self.clipsToBounds = true
        self.kf.indicator?.startAnimatingView()
        if let imageUrl = URL(string:imageUrlString ?? ""){
            self.kf.setImage(with: imageUrl, options: [.transition(ImageTransition.fade(0.5))], completionHandler: {
                (image, error, cacheType, imageUrl) in
                self.kf.indicator?.stopAnimatingView()
            })
        }
    }
    
}

