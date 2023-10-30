//
//  File.swift
//  Myosotis SwiftUI
//
//  Created by Acan on 2023/10/12.
//

import Foundation
import SwiftUI

struct Page_NavigationStack_Usage_2: View {
    
    @State private var showSettings: Bool = false
    
    var body: some View {
        NavigationStack {
            List(1..<11) { index in
                NavigationLink("Line \(index)", value: index)
            }.navigationDestination(for: Int.self) { index in
                    Text("The About Page of Line \(index)").navigationTitle("With Navigation Path (Settings Page Off)")
                }
                .navigationDestination(isPresented: $showSettings) {
                    Text("Settings Page").navigationTitle("With Navigation Path (Settings Page On)")
                }.navigationTitle("单层路径")
        }.toolbar {
            Text("Settings Toogle")
            Toggle("Show Settings Toogle", isOn: $showSettings).toggleStyle(SwitchToggleStyle())
        }
    }
}
