//
//  Page_Image.swift
//  Myosotis SwiftUI
//
//  Created by Acan on 2023/10/13.
//

import Foundation
import SwiftUI

struct Page_Stack: View {
    
    var body: some View {
        
        
        NavigationView {
            List {
                NavigationLink(destination: Page_HStack()) {
                    Image(systemName: "h.square").foregroundColor(.brown)
                    Text("HStack")
                }
                
                NavigationLink(destination: Page_VStack()) {
                    Image(systemName: "v.square").foregroundColor(.brown)
                    Text("VStack")
                }
                
                NavigationLink(destination: Page_ZStack()) {
                    Image(systemName: "z.square").foregroundColor(.brown)
                    Text("ZStack")
                }
            }.listStyle(DefaultListStyle())
        }
    }
}
