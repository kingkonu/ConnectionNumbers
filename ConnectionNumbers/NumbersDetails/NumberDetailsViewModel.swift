//
//  NumberDetailViewModel.swift
//  ConnectionNumbers
//
//  Created by Alexey Kanaev on 9/3/23.
//

import SwiftUI

class NumberDetailsViewModel: ObservableObject {
    @Published var numberMultiplier = 1
    
    var numberMultipliable: Int {
        myMultipliable = number.multipliable.first ?? 0
        return myMultipliable
    }
    
    var numberChanger: [Int] {
        get {
            return [1, 2, 3, 4, 5, 6, 7, 8, 9]
        }
        set {
            numberMultiplier = newValue.randomElement() ?? 0
        }
    }
    
    var numberComposition: Int {
        myMultipliable * numberMultiplier
    }
    
    private var myMultipliable = 0
    private var myMultiplier = 0
    
    private let number: Number
    
    init(number: Number) {
        self.number = number
    }
}


