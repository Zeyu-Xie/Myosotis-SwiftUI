//
//  Page_BaseElementView.swift
//  Myosotis SwiftUI
//
//  Created by Acan on 2023/10/13.
//

import Foundation
import SwiftUI

struct Page_BaseElementView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: Page_Image()) {
                    Image(systemName: "i.square").foregroundColor(.teal)
                    Text("Image")
                }
                
                NavigationLink(destination: Page_Text()) {
                    Image(systemName: "t.square").foregroundColor(.teal)
                    Text("Text")
                }
                
                NavigationLink(destination: Page_Button()) {
                    Image(systemName: "b.square").foregroundColor(.teal)
                    Text("Button")
                }
                
                NavigationLink(destination: Page_Label()) {
                    Image(systemName: "l.square").foregroundColor(.teal)
                    Text("Label")
                }
                
                NavigationLink(destination: Page_Stack()) {
                    Image(systemName: "s.square").foregroundColor(.teal)
                    Text("Stack")
                }
            }.listStyle(DefaultListStyle())
        }
    }
}
