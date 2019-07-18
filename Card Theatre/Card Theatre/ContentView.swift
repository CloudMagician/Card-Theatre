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
        NavigationView {
            List {
                NavigationLink(destination: TalkUIView()) {
                    Text("Talk")
                }
                NavigationLink(destination: FindUIView()) {
                    Text("Find")
                }
                NavigationLink(destination: AchievementUIView()) {
                    Text("Achievement")
                }
                NavigationLink(destination: SettingUIView()) {
                    Text("Setting")
                }
                NavigationLink(destination: GuideUIView()) {
                    Text("Guide")
                }
            }
            .navigationBarTitle(Text("Card Theatre"))
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
