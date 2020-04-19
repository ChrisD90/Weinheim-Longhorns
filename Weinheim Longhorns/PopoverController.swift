//
//  PopoverController.swift
//  Weinheim Longhorns
//
//  Created by Chris on 19.04.20.
//  Copyright © 2020 Chris. All rights reserved.
//

import Foundation
import UIKit

var currentFilter = String();

protocol dataDelegate {
    func sendDataToTableView(filter: String)
}

class PopoverController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var btnConfirm: UIButton!
    @IBOutlet weak var positionPicker: UIPickerView!
    
    var delegate: dataDelegate? = nil;
    var positions: [String] = ["-", "QB", "OL", "R", "RB", "TE", "DL", "LB", "DB"];
    
    override func viewDidLoad() {
        self.positionPicker.delegate = self;
        self.positionPicker.dataSource = self;
        super.viewDidLoad();
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        currentFilter = positions[row];
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1;
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return positions.count;
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return positions[row];
    }
    
    @IBAction func onConfirmPress(_ sender: Any) {
        currentFilter = positions[positionPicker.selectedRow(inComponent: 0)];
        if self.delegate != nil && currentFilter != "" {
            
            self.delegate?.sendDataToTableView(filter: currentFilter);
            dismiss(animated: true, completion: nil);
        }
    }
    
    
    
}
