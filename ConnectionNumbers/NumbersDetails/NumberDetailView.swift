//
//  NumberDetailView.swift
//  ConnectionNumbers
//
//  Created by Alexey Kanaev on 9/3/23.
//

import SwiftUI

struct NumberDetailView: View {
    @State private var answer: Int = 0
    @StateObject var viewModel: NumberDetailsViewModel
    
    var body: some View {
        
        VStack {
            Spacer()
            RatingView()
                .padding()
            
            HStack {
                Text("\(viewModel.numberMultipliable) x \(viewModel.numberMultiplier) = \(viewModel.numberComposition)")
                    .font(.largeTitle)
            }
            Spacer()
            Text("Введи правильный ответ")
                .font(.title3)
            
            TextField("?", value: $answer, formatter: NumberFormatter())
                .font(.largeTitle)
                .multilineTextAlignment(.center)
                .keyboardType(.decimalPad)
                .textFieldStyle(.roundedBorder)
                .frame(width: 100)
                .onSubmit {
                    self.answer = 0
                }
            
            Spacer()
            
            Button("Проверить") {
                if viewModel.numberComposition == answer {
                    print("OK")
                    viewModel.numberChanger = [1, 2, 3, 4, 5, 6, 7, 8, 9]
                    print(viewModel.numberMultiplier)
                } else {
                    print("Error")
                }
            }
            .padding()
            .font(.largeTitle)
        }
    }
}

struct NumberDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NumberDetailView(viewModel: NumberDetailsViewModel(number: Number.getExample()))
    }
}
