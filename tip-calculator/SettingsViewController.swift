//
//  SettingsViewController.swift
//  tip-calculator
//
//  Created by Nguyen Van Phuong Mai on 6/9/16.
//  Copyright © 2016 Nguyen Van Phuong Mai. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var tip_percentage_field: UITextField!
    @IBOutlet weak var picker_field: UITextField!
    let defaults = NSUserDefaults.standardUserDefaults()
    var default_cons = Constants.DefaultKeys.self
    let utility = Utility()
    var pick_options = [Constants.Currency.australia,
                        Constants.Currency.france,
                        Constants.Currency.india,
                      Constants.Currency.japan,
                      Constants.Currency.uk,
                      Constants.Currency.usa,
                      Constants.Currency.vietnam]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let picker_view = UIPickerView()
        picker_view.delegate = self
        picker_field.inputView = picker_view
        tip_percentage_field.text =
            NSString(string: utility.getTipPercentage() as! String) as String
        picker_field.text = utility.getCurrency()
    }
    
    override func viewWillAppear(animated: Bool) {
        tip_percentage_field.becomeFirstResponder()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func currencyEdited(sender: AnyObject) {
        utility.saveSetting(picker_field.text!, key: default_cons.currency_key)
    }
    
    @IBAction func tipPercentageEdited(sender: AnyObject) {
        utility.saveSetting(tip_percentage_field.text!, key: default_cons.tip_percentage_key)
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pick_options.count;
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pick_options[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        picker_field.text = pick_options[row]
        utility.saveSetting(pick_options[row], key: default_cons.currency_key)
    }

}
