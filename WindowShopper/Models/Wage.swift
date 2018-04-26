//
//  Wage.swift
//  WindowShopper
//
//  Created by Steven on 4/26/18.
//  Copyright © 2018 Steven Santiago. All rights reserved.
//

import Foundation

class Wage {
    
   class func getHours(forWage wage: Double, andPrice price:Double ) -> Int{
        return Int(ceil(price/wage))
    }
}
