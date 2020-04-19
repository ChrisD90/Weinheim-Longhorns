//
//  RosterTableController.swift
//  Weinheim Longhorns
//
//  Created by Chris on 21.03.20.
//  Copyright © 2020 Chris. All rights reserved.
//

import UIKit

class RosterTableController: UITableViewController, dataDelegate {

    var roster: [PlayerProfile] = [];
    @IBOutlet weak var btnFilter: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad();
        
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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "filterIdentifier" {
            let secondVC: PopoverController = segue.destination as! PopoverController;
            secondVC.delegate = self;
        }
    }
    
    func createRoster() {
        let player1 = PlayerProfile(name: "Chris", age: 12, position: "DB", image: UIImage(named: "Avatar_01")!, longhornSince: 2020);
        let player2 = PlayerProfile(name: "Hans", age: 32, position: "QB", image: UIImage(named: "Avatar_02")!, longhornSince: 2012);
        let player3 = PlayerProfile(name: "Detlef", age: 45, position: "OL", image: UIImage(named: "Avatar_01")!, longhornSince: 1995);
        let player4 = PlayerProfile(name: "Dieter", age: 21, position: "DL", image: UIImage(named: "Avatar_02")!, longhornSince: 2001);
        
        roster.append(player1);
        roster.append(player2);
        roster.append(player3);
        roster.append(player4);
    }
    
    // Delegate Method
    func sendDataToTableView(filter: String) {
        filterRoster(filter: filter);
    }
    
    func filterRoster(filter: String) {
        roster.removeAll();
        createRoster();
        
        if filter != "-" {
            roster.removeAll(where: { $0.position != filter });

        } else {
            roster.removeAll();
            createRoster();
        }
        
        tableView.reloadData();
        
    }
}
