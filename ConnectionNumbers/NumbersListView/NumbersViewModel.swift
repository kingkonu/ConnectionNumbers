//
//  NumbersViewModel.swift
//  ConnectionNumbers
//
//  Created by Alexey Kanaev on 9/3/23.
//

import SwiftUI

class NumbersViewModel: ObservableObject {
    @Published var levels: [NumberDetailsViewModel] = []

    func start() {
        let one = NumberDetailsViewModel(number: Number.getExample())
        levels.append(one)
        let two = NumberDetailsViewModel(number: Number.getExample())
        levels.append(two)
    }
//
//    func start() {


//        var numbers = [Number].self
//        numbers.forEach([Number.getExample()]) { number in
//            let numberDetailsViewModel = NumberDetailsViewModel(number: number)
//            numbers.append(numberDetailsViewModel)
//        }
//    }
}

