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
            List(viewModel.levels, id: \.numberMultipliable) { course in
                NavigationLink(destination: NumberDetailView(viewModel: course)) {
                    RowView(viewModel: course)
                }
            }
            .navigationTitle("Умножение")
            .navigationBarItems(trailing: Button("Start") {
                Task {
                    viewModel.start()
                }
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NumbersView()
    }
}
