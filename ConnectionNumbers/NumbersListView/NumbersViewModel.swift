//
//  NumbersViewModel.swift
//  ConnectionNumbers
//
//  Created by Alexey Kanaev on 9/3/23.
//

import SwiftUI

class NumbersViewModel: ObservableObject {
    @Published var levels: [NumberDetailsViewModel] = []
    
    func education() {
        EducationView()
    }


    func start() {
        let oneStep = NumberDetailsViewModel(
            number: Number.init(
                multipliable: [1],
                multiplier: [1, 2, 3, 4, 5, 6, 7, 8, 9],
                composition: 1
            )
        )
        levels.append(oneStep)

        let twoStep = NumberDetailsViewModel(
            number: Number.init(
                multipliable: [2],
                multiplier: [1, 2, 3, 4, 5, 6, 7, 8, 9],
                composition: 2
            )
        )
        levels.append(twoStep)

        let threeStep = NumberDetailsViewModel(
            number: Number.init(
                multipliable: [3],
                multiplier: [1, 2, 3, 4, 5, 6, 7, 8, 9],
                composition: 3
            )
        )
        levels.append(threeStep)

        let fourStep = NumberDetailsViewModel(
            number: Number.init(
                multipliable: [4],
                multiplier: [1, 2, 3, 4, 5, 6, 7, 8, 9],
                composition: 4
            )
        )
        levels.append(fourStep)

        let fiveStep = NumberDetailsViewModel(
            number: Number.init(
                multipliable: [5],
                multiplier: [1, 2, 3, 4, 5, 6, 7, 8, 9],
                composition: 5
            )
        )
        levels.append(fiveStep)

        let sixStep = NumberDetailsViewModel(
            number: Number.init(
                multipliable: [6],
                multiplier: [1, 2, 3, 4, 5, 6, 7, 8, 9],
                composition: 6
            )
        )
        levels.append(sixStep)

        let sevenStep = NumberDetailsViewModel(
            number: Number.init(
                multipliable: [7],
                multiplier: [1, 2, 3, 4, 5, 6, 7, 8, 9],
                composition: 7
            )
        )
        levels.append(sevenStep)

        let eightStep = NumberDetailsViewModel(
            number: Number.init(
                multipliable: [8],
                multiplier: [1, 2, 3, 4, 5, 6, 7, 8, 9],
                composition: 8
            )
        )
        levels.append(eightStep)

        let nineStep = NumberDetailsViewModel(
            number: Number.init(
                multipliable: [9],
                multiplier: [1, 2, 3, 4, 5, 6, 7, 8, 9],
                composition: 9
            )
        )
        levels.append(nineStep)
    }
}

