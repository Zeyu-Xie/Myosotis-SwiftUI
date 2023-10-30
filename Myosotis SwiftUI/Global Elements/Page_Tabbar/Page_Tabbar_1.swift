//
//  Page_Tabbar_1.swift
//  Myosotis SwiftUI
//
//  Created by Acan on 2023/10/23.
//

import Foundation
import SwiftUI

struct Page_Tabbar_1: View {
    var body: some View {
        TabView{
            VStack {
                Text("Page 1")
            }.tabItem {
                Label("Page 1", systemImage: "1.square")
            }
            
            VStack {
                Text("Page 2")
            }.tabItem {
                Label("Page 2", systemImage: "2.square")
            }
        }.padding()
    }
}
