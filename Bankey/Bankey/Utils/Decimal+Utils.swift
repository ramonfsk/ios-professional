//
//  Decimal+Utils.swift
//  Bankey
//
//  Created by Ramon Ferreira do Nascimento on 18/03/22.
//

import Foundation

extension Decimal {
    var doubleValue: Double {
        return NSDecimalNumber(decimal: self).doubleValue
    }
}
