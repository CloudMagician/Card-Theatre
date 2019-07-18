//
//  FindUIView.swift
//  Card Theatre
//
//  Created by 陆子旭 on 2019/7/12.
//  Copyright © 2019 陆子旭. All rights reserved.
//

import SwiftUI

struct FindUIView : View {
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
            .navigationBarTitle("Find")
        }
    }
}

#if DEBUG
struct FindUIView_Previews : PreviewProvider {
    static var previews: some View {
        FindUIView()
    }
}
#endif
