//
//  TalkUIView.swift
//  Card Theatre
//
//  Created by 陆子旭 on 2019/7/12.
//  Copyright © 2019 陆子旭. All rights reserved.
//

import SwiftUI

struct TalkUIView : View {
    
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: CardsUIView()) {
                    Text("Child's fairy tale")
                }
                NavigationLink(destination: FindUIView()) {
                    Text("Myth")
                }
                NavigationLink(destination: AchievementUIView()) {
                    Text("Fable")
                }
                NavigationLink(destination: SettingUIView()) {
                    Text("Fun story")
                }
            }
            .navigationBarTitle("Talk")
        }
    }
}

#if DEBUG
struct TalkUIView_Previews : PreviewProvider {
    static var previews: some View {
        TalkUIView()
    }
}
#endif
