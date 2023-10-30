//
//  Page_Tabbar.swift
//  Myosotis SwiftUI
//
//  Created by Acan on 2023/10/23.
//

import Foundation
import SwiftUI

struct Page_Tabbar: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: Page_Tabbar_1().navigationTitle("Init Directly")) {
                    Image(systemName: "i.square")
                    Text("Init Directly")
                }
                NavigationLink(destination: Page_Tabbar_2().navigationTitle("Init with Selection")) {
                    Image(systemName: "i.square")
                    Text("Init with Selection")
                }
                NavigationLink(destination: Page_Tabbar_3().navigationTitle("TabView Colors")) {
                    Image(systemName: "t.square")
                    Text("TabView Colors")
                }
            }.listStyle(DefaultListStyle())
        }
    }
}
