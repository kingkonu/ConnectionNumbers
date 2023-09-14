//
//  CongratulationsView.swift
//  ConnectionNumbers
//
//  Created by Alexey Kanaev on 9/14/23.
//

import SwiftUI

struct CongratulationsView: View {
    var body: some View {
        VStack {
            Image(systemName: "pencil.and.ruler")
                .resizable()
                .frame(width: 50, height: 50)
                .foregroundColor(.indigo)
                .padding()
            Text("Молодец!")
                .font(.largeTitle)
            Text("Отлично, продолжай в том же духе, но в этот раз попробуй другой множитель")
                .multilineTextAlignment(.center)
                .font(.title3)
                .padding(30)
        }
    }
}

struct CongratulationsView_Previews: PreviewProvider {
    static var previews: some View {
        CongratulationsView()
    }
}
