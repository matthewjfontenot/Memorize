//
//  Array+Only.swift
//  Memorize
//
//  Created by Matthew Fontenot on 12/8/20.
//

import Foundation

extension Array {
    var only: Element? {
        count == 1 ? first : nil
    }
}
