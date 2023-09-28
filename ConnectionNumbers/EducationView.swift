//
//  EducationView.swift
//  ConnectionNumbers
//
//  Created by Alexey Kanaev on 9/17/23.
//

import SwiftUI

struct EducationView: View {
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
        EducationView()
    }
}


struct SectionView: View {

    let section: Section

    var body: some View {
        VStack {
            Text(section.text)
                .padding()
                .font(.headline)
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
            HStack {
                section.image
                    .resizable()
                    .frame(width: section.width, height: section.height)
                Text(section.loga)
                    .font(.title)
            }
        }
        .frame(width: 275, height: 275)
        .background(section.color)
        .cornerRadius(30)
        .shadow(color: (section.color).opacity(0.3),radius: 20, x: 0, y: 20)
    }
}


struct Section: Identifiable {
    var id = UUID()
    var text: String
    var image: Image
    var loga: String
    var color: Color
    var width: CGFloat
    var height: CGFloat
}

let pencil = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
let addColor = #colorLiteral(red: 1, green: 0.1857388616, blue: 0.5733950138, alpha: 1)

let sectionData = [
    Section(
        text: "В математике все предметы и объекты могут быть обозначены числами",
        image: Image("candy"),
        loga: "=  1",
        color: Color(pencil),
        width: 50, height: 50
    ),
    Section(
        text: "Если говорить про умножение, то это число называется",
        image: Image("candy"),
        loga: "МНОЖИМОЕ",
        color: Color(addColor),
        width: 50, height: 50
    ),
    Section(
        text: "Второе числе после знака -x-, обозначающего действие умножения, обладает супер силой и называется" ,
        image: Image("cloning"),
        loga: "МНОЖИТЕЛЬ",
        color: Color(pencil),
        width: 50, height: 50
    ),
    Section(
        text: "Его проще представить как машину по клонированию или ксерокс (на работе у ваших родителей). Если поместить туда любой предмет или число он скопирует его заданное количество раз.",
        image: Image("cloning"),
        loga: "",
        color: Color(addColor),
        width: 50, height: 50
    ),
    Section(
        text: "Значение множителя установлено на 2",
        image: Image("example"),
        loga: "",
        color: Color(pencil),
        width: 250, height: 120
    ),
    Section(
        text: "Полученный ответ называется Произведением. Это все те же конфеты, что и в начале, но их больше так как с ними поработал Множитель",
        image: Image("candy"),
        loga: "",
        color: Color(addColor),
        width: 50, height: 50
    ),
    Section(
        text: "И последнее, если поменять местами множимое и множитель ничего не измениться", 
        image: Image("example2"), 
        loga: "", 
        color: Color(pencil), 
        width: 250, height: 70
    )
]
