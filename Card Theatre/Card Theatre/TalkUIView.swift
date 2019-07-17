//
//  TalkUIView.swift
//  Card Theatre
//
//  Created by 陆子旭 on 2019/7/12.
//  Copyright © 2019 陆子旭. All rights reserved.
//

import SwiftUI

struct TalkUIView : View {
    
    @State var date = Date()
    
    var body: some View {
        NavigationView {
            Form {
                DatePicker($date) {
                    Text("Date")
                }
            }
            .navigationBarTitle("Settings")
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
