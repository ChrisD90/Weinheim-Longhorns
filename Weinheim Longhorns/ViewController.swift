//
//  ViewController.swift
//  Weinheim Longhorns
//
//  Created by Chris on 20.03.20.
//  Copyright © 2020 Chris. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var openMenu: UIBarButtonItem!
    @IBOutlet weak var showInfo: UIBarButtonItem!
    @IBOutlet weak var logIn: UIBarButtonItem!
    
    var isLoggedIn = false;
    
    override func viewDidLoad() {
        super.viewDidLoad();
    }

    @IBAction func onLogInPress(_ sender: UIBarButtonItem) {
        if isLoggedIn == false {
            logIn.image = UIImage(named: "person.fill");
            isLoggedIn = true;
        }
    }
    
}

