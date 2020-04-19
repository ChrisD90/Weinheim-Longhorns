//
//  News.swift
//  Weinheim Longhorns
//
//  Created by Chris on 19.04.20.
//  Copyright © 2020 Chris. All rights reserved.
//

import Foundation
import UIKit

class News {
    
    var title: String;
    var keywords: String;
    var text: String;
    var date: Date;
    var image: UIImage;
    var tag: String;
    
    init(title: String, keywords: String, text: String, date: Date, image: UIImage, tag: String) {
        self.title = title;
        self.keywords = keywords;
        self.text = text;
        self.date = date;
        self.image = image;
        self.tag = tag;
    }
}
