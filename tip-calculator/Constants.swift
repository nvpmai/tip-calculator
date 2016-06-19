//
//  Constants.swift
//  tip-calculator
//
//  Created by Nguyen Van Phuong Mai on 6/18/16.
//  Copyright © 2016 Nguyen Van Phuong Mai. All rights reserved.
//

struct Constants {
    
    struct DefaultKeys {
        static let tip_percentage_key = "tip_percentage"
        static let current_time_key = "current_time"
        static let bill_amount_key = "bill_amount"
        static let currency_key = "currency"
    }
    
    struct Currency {
        static let vietnam = "Vietnam"
        static let usa = "United States"
        static let uk = "United Kingdom"
        static let japan = "Japan"
        static let france = "France"
        static let australia = "Australia"
        static let india = "India"
    }
    
    struct DefaultValues {
        static let tip_percentage = "0.18"
        static let bill_amount = ""
        static let currency = "Vietnam"
    }
    
}
