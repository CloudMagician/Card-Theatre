//
//  CardsUIView.swift
//  Card Theatre
//
//  Created by 陆子旭 on 2019/7/14.
//  Copyright © 2019 陆子旭. All rights reserved.
//

import SwiftUI

struct CardsUIView : View {
    
    var cards = cardsData
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 30.0) {
                ForEach(cards) { item in
                    PresentationLink(destination: ContentView()) {
                        GeometryReader { geometry in
                            CardView(text: item.text,
                                       image: item.image,
                                       color: item.color,
                                       shadowColor: item.shadowColor)
                                .rotation3DEffect(Angle(degrees: Double(geometry.frame(in: .global).minX - 30) / -40), axis: (x: 0, y: 10.0, z: 0))
                        }
                        .frame(width: 246, height: 360)
                    }
                }
            }
            .padding(.leading, 30)
                .padding(.top, 30)
                .padding(.bottom, 70)
            Spacer()
        }
    }
}

#if DEBUG
struct CardsUIView_Previews : PreviewProvider {
    static var previews: some View {
        CardsUIView()
    }
}
#endif


struct CardView: View {
    var text = ""
    var image = ""
    var color = Color("")
    var shadowColor = Color("")
    
    var body: some View {
        return VStack(alignment: .leading) {
            Image(image)
                .resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode: .fit)
                .frame(width: 246, height: 150)
                .padding(.bottom, 30)
            Spacer()
            Text(text)
                .fontWeight(.bold)
                .color(.white)
                .padding(30)
                .lineLimit(4)
                .padding(.trailing, 50)
        }
        .background(color)
            .cornerRadius(30)
            .frame(width: 246, height: 360)
            .shadow(color: shadowColor, radius: 20, x: 0, y: 20)
    }
}

struct Card: Identifiable {
    var id = UUID()
    var text: String
    var image: String
    var color: Color
    var shadowColor: Color
}

let cardsData = [
    Card(text: "Build an app with SwiftUI",
           image: "Illustration1",
           color: Color("background3"),
           shadowColor: Color("backgroundShadow3")),
    Card(text: "Design and animate your UI",
           image: "Illustration2",
           color: Color("background4"),
           shadowColor: Color("backgroundShadow4")),
    Card(text: "Swift UI Advanced",
           image: "Illustration3",
           color: Color("background7"),
           shadowColor: Color(hue: 0.677, saturation: 0.701, brightness: 0.788, opacity: 0.5)),
    Card(text: "Framer Playground",
           image: "Illustration4",
           color: Color("background8"),
           shadowColor: Color(hue: 0.677, saturation: 0.701, brightness: 0.788, opacity: 0.5)),
    Card(text: "Flutter for Designers",
           image: "Illustration5",
           color: Color("background9"),
           shadowColor: Color(hue: 0.677, saturation: 0.701, brightness: 0.788, opacity: 0.5)),
]
