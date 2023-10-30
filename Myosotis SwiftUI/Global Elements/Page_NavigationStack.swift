//
//  Page_NavigationView.swift
//  Myosotis SwiftUI
//
//  Created by Acan on 2023/10/12.
//

import Foundation
import SwiftUI

struct Page_NavigationStack: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: Page_NavigationStack_Usage_1()) {
                    Image(systemName: "1.square").foregroundColor(.teal)
                    Text("无路径")
                }
                NavigationLink(destination: Page_NavigationStack_Usage_2()) {
                    Image(systemName: "2.square").foregroundColor(.teal)
                    Text("单层路径")
                }
                NavigationLink(destination: Page_NavigationStack_Usage_3()) {
                    Image(systemName: "3.square").foregroundColor(.teal)
                    Text("多层路径")
                }
                NavigationLink(destination: Page_NavigationStack_Usage_4()) {
                    Image(systemName: "4.square").foregroundColor(.teal)
                    Text("多层路径（封装）")
                }
            }.listStyle(DefaultListStyle())
        }
    }
}
