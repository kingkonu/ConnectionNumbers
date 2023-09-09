//
//  RowView.swift
//  ConnectionNumbers
//
//  Created by Alexey Kanaev on 9/9/23.
//

import SwiftUI

struct RowView: View {
    let viewModel: NumberDetailsViewModel

    var body: some View {
        VStack {
            Text("\(viewModel.numberMultipliable) x \(viewModel.numberMultiplier) = \(viewModel.numberComposition)")
        }
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(viewModel: NumberDetailsViewModel(number: Number.getExample()))
    }
}
