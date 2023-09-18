//
//  TestView.swift
//  ConnectionNumbers
//
//  Created by Alexey Kanaev on 9/17/23.
//

import SwiftUI

struct TestView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Обучение")
                    .font(.largeTitle)
                    .padding(50)
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 20) {
                        ForEach(sectionData) { item in
                            GeometryReader { geometry in
                                SectionView(section: item)
                                    .rotation3DEffect(Angle(degrees: Double(geometry .frame(in: .global) .minX - 30) / -20), axis: (x: 0, y: 10, z: 0))
                            }
                            .frame(width: 275, height: 275)
                        }
                    }
                    .padding(30)
                    .padding(.bottom, 30)
                }
                NavigationLink(destination: NumbersView()) {
                    Text("Начать")
                        .font(.largeTitle)
                        .foregroundColor(.indigo)
                }
            }
        }
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}


struct SectionView: View {
    let pencil = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
    var section: Section

    var body: some View {
        VStack {
            Text(section.text)
                .padding()
                .font(.headline)
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
            HStack {
                Image("candy")
                    .resizable()
                    .frame(width: 50, height: 50)
                Text("=  1")
                    .font(.largeTitle)
            }
        }
        .frame(width: 275, height: 275)
        .background(Color(pencil))
        .cornerRadius(30)
        .shadow(color: Color(pencil).opacity(0.3),radius: 20, x: 0, y: 20)
    }
}


struct Section: Identifiable {
    var id = UUID()
    var text: String
    var image: Image
}

let sectionData = [
    Section(text: "В математике все предметы и объекты могут быть обозначены числами", image: Image("candy")),
    Section(text: "Если говорить про умножение, то это число называется МНОЖИМОЕ", image: Image("candy")),
    Section(text: "Второе числе после знака x, обозначающего действие умножения, называется МНОЖИТЕЛЬ. Он обладает супер силой." , image: Image("candy")),
    Section(text: "Его проще представить как машину по клонированию или ксерокс (на работе у ваших родителей). Если поместить туда любой предмет или число он скопирует его заданное количество раз.", image: Image("candy")),
    Section(text: "Полученный ответ называется ПРОИЗВЕДЕНИЕ", image: Image("candy")),
    Section(text: "И последнее, если поменять местами множимое и множитель ничего не измениться", image: Image("candy"))
]
