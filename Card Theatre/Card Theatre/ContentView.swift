//
//  ContentView.swift
//  Card Theatre
//
//  Created by 陆子旭 on 2019/7/11.
//  Copyright © 2019 陆子旭. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        VStack(spacing: 50.0) {
            Text("Card Theatre")
                .font(.largeTitle)
            VStack(alignment: .center) {
                NavigationLink(destination: TalkUIView()) {
                    CircleButton(name: "Talk")
                }
                Button(action: {}) {
                    Text("Find")
                }
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("Achievement")
                }
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("Setting")
                }
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("Guide")
                }
            }
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif

struct CircleButton: View {
    var name = ""
    
    var body: some View {
        return HStack {
            Text(name)
        }
        .frame(width: 44, height: 44)
        .background(Color("button"))
        .cornerRadius(30)
        .shadow(color: Color("buttonShadow"), radius: 20, x: 0, y: 20)
    }
}
