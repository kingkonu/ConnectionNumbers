//
//  NumberDetailView.swift
//  ConnectionNumbers
//
//  Created by Alexey Kanaev on 9/3/23.
//

import SwiftUI

struct NumberDetailView: View {
    var viewModel: NumberDetailsViewModel
    
    var body: some View {
        HStack {
            Text("\(viewModel.numberMultipliable) x \(viewModel.numberMultiplier) = \(viewModel.numberComposition)")
                .font(.largeTitle)
        }
    }
}

struct NumberDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NumberDetailView(viewModel: NumberDetailsViewModel(number: Number.getExample()))
    }
}
