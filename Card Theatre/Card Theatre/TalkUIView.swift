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
        List {
            Text("Card Theatre")
                .font(.largeTitle)
        }
        .navigationBarTitle(Text("Card Theatre"))
    }
}

#if DEBUG
struct TalkUIView_Previews : PreviewProvider {
    static var previews: some View {
        TalkUIView()
    }
}
#endif
