//
//  ContentView.swift
//  ConnectionNumbers
//
//  Created by Alexey Kanaev on 8/28/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "checkerboard.rectangle")
                .resizable()
                .frame(width: 100, height: 100)
                .foregroundColor(.indigo)
            Text("Connection Numbers")
                .font(.largeTitle)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
