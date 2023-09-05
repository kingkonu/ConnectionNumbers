//
//  ContentView.swift
//  ConnectionNumbers
//
//  Created by Alexey Kanaev on 8/28/23.
//

import SwiftUI

struct NumbersView: View {
    @StateObject private var viewModel = NumbersViewModel()

    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.levels, id: \.numberMultipliable) { number in
                    Text("\(number.numberMultipliable)")
                }
            }
                    .navigationTitle("Умножение")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NumbersView()
    }
}
