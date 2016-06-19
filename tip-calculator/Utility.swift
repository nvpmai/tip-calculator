//
//  Utility.swift
//  tip-calculator
//
//  Created by Nguyen Van Phuong Mai on 6/19/16.
//  Copyright © 2016 Nguyen Van Phuong Mai. All rights reserved.
//

import Foundation

class Utility {
    
    let defaults = NSUserDefaults.standardUserDefaults()
    var default_cons = Constants.DefaultKeys.self
    var default_values = Constants.DefaultValues.self
    var currency_cons = Constants.Currency.self
    
    func getTipPercentage() -> AnyObject {
        let tip_percentage_obj = defaults.objectForKey(default_cons.tip_percentage_key)
        if tip_percentage_obj != nil {
            return tip_percentage_obj!
        }
        return default_values.tip_percentage as AnyObject
    }
    
    func getBillAmount() -> AnyObject {
        let last_time_logout_obj = defaults.objectForKey(default_cons.current_time_key)
        if last_time_logout_obj != nil && isLessThan10Minutes(last_time_logout_obj!) {
            let bill_amount_obj = defaults.objectForKey(default_cons.bill_amount_key)
            if bill_amount_obj != nil {
                return bill_amount_obj!
            }
        }
        return default_values.bill_amount as AnyObject
    }
    
    func getCurrency() -> String {
        let currency_obj = defaults.objectForKey(default_cons.currency_key)
        if currency_obj != nil {
            return NSString(string: currency_obj as! String) as String
        }
        return default_values.currency
    }
    
    func getLocaleIdentifier() -> String {
        var locale_identifiers: [String:String] = [
            currency_cons.france : "fr_FR",
            currency_cons.japan : "ja_JP",
            currency_cons.uk : "en_GB",
            currency_cons.usa : "en_US",
            currency_cons.vietnam: "vi_VN",
            currency_cons.australia : "en_AU",
            currency_cons.india : "ta_IN"
        ]
        return locale_identifiers[getCurrency()]!
    }
    
    func saveSetting(value: AnyObject, key: String) {
        defaults.setObject(value, forKey: key)
        defaults.synchronize()
    }
    
    func isLessThan10Minutes(last_time_logout_obj: AnyObject) -> Bool {
        return NSCalendar.currentCalendar().components(.Minute, fromDate: last_time_logout_obj as! NSDate, toDate: NSDate(), options: []).minute < 10
    }
    
}