//
//  SettingsViewController.swift
//  tipster
//
//  Created by Tsang, Steven on 3/3/17.
//  Copyright © 2017 Tsang, Steven. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {


    
    @IBOutlet weak var defaultTipSegment: UISegmentedControl!
    let defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let index = defaults.integer(forKey: "defaultTipSegment")
        defaultTipSegment.selectedSegmentIndex = index

    }
    
    @IBAction func saveDefaultTip(_ sender: Any) {
        defaults.set(defaultTipSegment.selectedSegmentIndex, forKey: "defaultTipSegment")
        defaults.synchronize()
        print ("default Tip saved, index: \(defaultTipSegment.selectedSegmentIndex)")
    }

}
