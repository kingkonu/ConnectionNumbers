//
//  WelcomeView.swift
//  ConnectionNumbers
//
//  Created by Alexey Kanaev on 9/17/23.
//

import SwiftUI

struct WelcomeView: View {
    @State private var animate = false

    var body: some View {
        ZStack {
            Image("atom")
                .resizable()
                .frame(width: 80, height: 80)
                .scaleEffect(animate ? 2 : 1)
                .onAppear {
                    animate.toggle()
                }
                .animation(.easeIn(duration: 5), value: animate)

            TestView()
                .opacity(animate ? 1 : 0)
                .animation(.easeOut.delay(2), value: animate)
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
