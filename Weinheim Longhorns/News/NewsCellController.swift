//
//  NewsCellController.swift
//  Weinheim Longhorns
//
//  Created by Chris on 19.04.20.
//  Copyright © 2020 Chris. All rights reserved.
//

import Foundation
import UIKit

class NewsCellController: UITableViewCell {
    

    @IBOutlet weak var header: UITextView!
    @IBOutlet weak var newsImage: UIImageView!
    @IBOutlet weak var newsDate: UILabel!
    @IBOutlet weak var previewText: UITextView!
    
    func setProperties(news: News) {
        self.header.text = news.title;
        self.newsImage.image = news.image;
        self.previewText.text = news.text;
        self.newsDate.text = news.date;
    }
}
