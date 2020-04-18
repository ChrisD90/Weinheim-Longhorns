//
//  RosterCellController.swift
//  Weinheim Longhorns
//
//  Created by Chris on 18.04.20.
//  Copyright © 2020 Chris. All rights reserved.
//

import Foundation
import UIKit

class RosterCellController: UITableViewCell {
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var rosterImage: UIImageView!
    @IBOutlet weak var age: UILabel!
    @IBOutlet weak var position: UILabel!
    @IBOutlet weak var longhornSince: UILabel!
    
    func setCornerRadius() {
        rosterImage.layer.cornerRadius = (rosterImage?.frame.size.width ?? 0.0) / 2;
        rosterImage.clipsToBounds = true
        rosterImage.layer.borderWidth = 3.0
        rosterImage.layer.borderColor = UIColor.brown.cgColor;
        
    }
    
    func setProperties(player: PlayerProfile) {
        self.name.text = player.name;
        self.age.text = String(player.age);
        self.position.text = player.position;
        self.rosterImage.image = player.image;
        self.longhornSince.text = String(player.longhornSince);
        
        setCornerRadius();
    }
}
