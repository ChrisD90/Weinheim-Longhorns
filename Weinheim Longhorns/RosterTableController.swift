//
//  RosterTableController.swift
//  Weinheim Longhorns
//
//  Created by Chris on 21.03.20.
//  Copyright © 2020 Chris. All rights reserved.
//

import UIKit

class RosterTableController: UITableViewController {

    @IBOutlet weak var tableCell: UITableViewCell!;
    
    let countries = Country.allCountries;
    
    override func viewDidLoad() {
        super.viewDidLoad();
        print("RosterTableController loaded");

    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell", for: indexPath)

        return cell
    }
}
