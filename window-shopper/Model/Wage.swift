//
//  Wage.swift
//  window-shopper
//
//  Created by Asset Ryskul on 8/7/20.
//  Copyright © 2020 Asset Ryskul. All rights reserved.
//

import Foundation
class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil( price / wage ))
    }
}
