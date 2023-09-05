//
//  Number.swift
//  ConnectionNumbers
//
//  Created by Alexey Kanaev on 9/3/23.
//

import Foundation

struct Number {
    let multipliable: [Int] // множимое
    let multiplier: [Int]  // множитель
    var composition: Int // произведение

}

extension Number {
    static func getExample() -> Number {
        Number(
            multipliable: [1, 2, 3, 4, 5, 6, 7, 8, 9],
            multiplier: [1, 2, 3, 4, 5, 6, 7, 8, 9],
            composition: 0
        )
    }
}
