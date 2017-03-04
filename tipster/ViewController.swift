//
//  ViewController.swift
//  tipster
//
//  Created by Tsang, Steven on 2/28/17.
//  Copyright © 2017 Tsang, Steven. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let defaults = UserDefaults.standard
    
    @IBOutlet weak var TipLabel: UILabel!
    @IBOutlet weak var TotalLabel: UILabel!
    @IBOutlet weak var BillField: UITextField!
    @IBOutlet weak var TipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //BillField.attributedPlaceholder =
        print("view will appear")
        BillField.becomeFirstResponder();
        let index = defaults.integer(forKey: "defaultTipSegment")
        TipControl.selectedSegmentIndex = index
        calculateTip()
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func OnTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: AnyObject) {
        calculateTip()
    }
    
    func calculateTip () {
        let percentages = [0.18, 0.2, 0.25]
        let bill = Double(BillField.text!) ?? 0
        let tip = bill * percentages[TipControl.selectedSegmentIndex]
        let total = bill + tip
        //TipLabel.text = String(format: "$%.2f", tip)
        //TotalLabel.text = String(format: "$%.2f", total)
        TipLabel.text = String(format: "%.2f", tip)
        TotalLabel.text = String(format: "%.2f", total)

    }
 
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view did appear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("view will disappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("view did disappear")
    }
}

