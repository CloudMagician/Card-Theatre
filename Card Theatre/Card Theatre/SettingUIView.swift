//
//  SettingUIView.swift
//  Card Theatre
//
//  Created by 陆子旭 on 2019/7/12.
//  Copyright © 2019 陆子旭. All rights reserved.
//

import SwiftUI

struct SettingUIView : View {
    @State var receive = false
    @State var number = 1
    @State var selection = 1
    @State var date = Date()
    @State var email = ""
    @State var submit = false
    
    var body: some View {
        NavigationView {
            Form {
                Toggle(isOn: $receive) {
                    Text("Recieve Notifications")
                }
                Stepper(value: $number, in: 1...10) {
                    Text("\(number) Notification\(number > 1 ? "s" : "") per week")
                }
                Picker(selection: $selection, label: Text("Favourite course")) {
                    Text("SwiftUI").tag(1)
                    Text("React").tag(2)
                }
                DatePicker($date) {
                    Text("Date")
                }
                Section(header: Text("Email")) {
                    TextField("Your email: ", text: $email)
                        .textFieldStyle(.roundedBorder)
                }
                Button(action: { self.submit.toggle() }) {
                    Text("Submit")
                }
                .presentation($submit, alert: {
                    Alert(title: Text("Thanks"), message: Text("Email: \(email)"))
                })
            }
            .navigationBarTitle("Settings")
        }
    }
}

#if DEBUG
struct SettingUIView_Previews : PreviewProvider {
    static var previews: some View {
        SettingUIView()
    }
}
#endif
