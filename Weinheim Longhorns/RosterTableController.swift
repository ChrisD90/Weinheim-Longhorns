//
//  RosterTableController.swift
//  Weinheim Longhorns
//
//  Created by Chris on 21.03.20.
//  Copyright © 2020 Chris. All rights reserved.
//

import UIKit

class RosterTableController: UITableViewController {
    
    @IBOutlet weak var sortButton: UIBarButtonItem!
    @IBOutlet var popoverView: UIView!
    @IBOutlet weak var filterPosition: UITextField!
    
    var roster: [PlayerProfile] = [];
    
    override func viewDidLoad() {
        super.viewDidLoad();
        print("RosterTableController loaded");
        createRoster();
        self.tableView.rowHeight = 280;
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return roster.count;
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let player = roster[indexPath.row];
        let cell = tableView.dequeueReusableCell(withIdentifier: "rosterProfile") as! RosterCellController;
        cell.setProperties(player: player);
        return cell;
    }
    
    func createRoster() {
        let player1 = PlayerProfile(name: "Chris", age: 12, position: "DB", image: UIImage(named: "Avatar_01")!, longhornSince: 2020);
        let player2 = PlayerProfile(name: "Hans", age: 32, position: "QB", image: UIImage(named: "Avatar_02")!, longhornSince: 2012);
        let player3 = PlayerProfile(name: "Detlef", age: 45, position: "OL", image: UIImage(named: "Avatar_01")!, longhornSince: 1995);
        
        roster.append(player1);
        roster.append(player2);
        roster.append(player3);
    }
    
    @IBAction func onSortButtonPressed(_ sender: Any) {
        
    }
}
