//
//  Page_Tabbar_2.swift
//  Myosotis SwiftUI
//
//  Created by Acan on 2023/10/23.
//

import Foundation
import SwiftUI

struct Page_Tabbar_2: View {
    
    @State private var selected: Int = 1
    
    var body: some View {
        TabView(selection: self.$selected){
            VStack(alignment: .leading) {
                Text("Page 1").padding(.bottom)
                Text("Selection: \(selected)")
            }.tabItem {
                Label("Page 1", systemImage: "1.square")
            }.tag(1)
            
            VStack(alignment: .leading) {
                Text("Page 2").padding(.bottom)
                Text("Selection: \(selected)")
            }.tabItem {
                Label("Page 2", systemImage: "2.square")
            }.tag(2)
        }.padding()
    }
}
