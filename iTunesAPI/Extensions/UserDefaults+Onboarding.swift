//
//  UserDefaults+Onboarding.swift
//  ItunesAPI
//
//  Created by Gom3a on 3/28/18.
//  Copyright © 2018 Gom3a. All rights reserved.
//
import Foundation

extension UserDefaults {
    var albumsCompleted: Bool {
        get { return bool(forKey: #function) }
        set { setValue(newValue, forKey: #function) }
    }
}
