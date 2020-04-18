//
//  PlayerProfile.swift
//  Weinheim Longhorns
//
//  Created by Chris on 18.04.20.
//  Copyright © 2020 Chris. All rights reserved.
//

import Foundation
import UIKit

class PlayerProfile {
    
    var name: String;
    var age: Int;
    var position: String
    var image: UIImage;
    var longhornSince: Int;
    
    init(name: String, age: Int, position: String, image: UIImage, longhornSince: Int) {
        self.name = name;
        self.age = age;
        self.position = position;
        self.image = image;
        self.longhornSince = longhornSince;
    }
    
}
