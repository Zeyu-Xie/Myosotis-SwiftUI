//
//  Page_NavigationView.swift
//  Myosotis SwiftUI
//
//  Created by Acan on 2023/10/12.
//

import Foundation
import SwiftUI

struct Page_NavigationView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: Text("Label - 1").navigationTitle("Label - 1")) {
                    Image(systemName: "1.square").foregroundColor(.teal)
                    Text("Label - 1")
                }
                NavigationLink(destination: Text("Label - 2").navigationTitle("Label - 2")) {
                    Image(systemName: "2.square").foregroundColor(.teal)
                    Text("Label - 2")
                }
                NavigationLink(destination: Text("Label - 3").navigationTitle("Label - 3")) {
                    Image(systemName: "3.square").foregroundColor(.teal)
                    Text("Label - 3")
                }
                NavigationLink(destination: Text("Label - 4").navigationTitle("Label - 4")) {
                    Image(systemName: "4.square").foregroundColor(.teal)
                    Text("Label - 4")
                }
            }.listStyle(DefaultListStyle())
        }
    }
}
