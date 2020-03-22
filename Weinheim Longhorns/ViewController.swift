//
//  ViewController.swift
//  Weinheim Longhorns
//
//  Created by Chris on 20.03.20.
//  Copyright © 2020 Chris. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPopoverPresentationControllerDelegate {

    @IBOutlet weak var openMenu: UIBarButtonItem!
    @IBOutlet weak var showInfo: UIBarButtonItem!
    @IBOutlet weak var logIn: UIBarButtonItem!
    @IBOutlet weak var info: UIBarButtonItem!
    @IBOutlet weak var leadingConstraint: NSLayoutConstraint!
    
    /**
        BUTTONS
     */
    @IBOutlet weak var btnNews: UIButton!
    @IBOutlet weak var btnGameplan: UIButton!
    @IBOutlet weak var btnRoster: UIButton!
    
    var isLoggedIn = false;
    var sideMenuVisible = false;
    
    override func viewDidLoad() {
        super.viewDidLoad();
        leadingConstraint.constant = -200;
    }

    @IBAction func onLogInPress(_ sender: UIBarButtonItem) {
        if isLoggedIn == false {
            logIn.image = UIImage(systemName: "person.fill");
            isLoggedIn = true;
        } else {
            logIn.image = UIImage(systemName: "person");
            isLoggedIn = false;
        }
    }
    
    @IBAction func onInfoPress(_ sender: UIBarButtonItem) {
        let viewController = UIViewController();
        viewController.modalPresentationStyle = .popover;
        viewController.popoverPresentationController?.delegate = self;
        present(viewController, animated: true, completion: nil);
    }
    @IBAction func openSideMenu(_ sender: UIBarButtonItem) {
        if !sideMenuVisible {
            leadingConstraint.constant = 0;
            UIView.animate(withDuration: 0.2, delay: 0.0, options: .curveEaseIn, animations: {
                self.view.layoutIfNeeded();
            })
            sideMenuVisible = true;
        } else {
            leadingConstraint.constant = -200;
            sideMenuVisible = false;
        }
    }
}
