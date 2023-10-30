//
//  File.swift
//  Myosotis SwiftUI
//
//  Created by Acan on 2023/10/14.
//

import Foundation
import SwiftUI

struct Page_HStack: View {
    var body: some View {
        VStack(spacing: 20) {
            HStack{
                Text("Leading")
                Text("Center")
                Text("Trailing")
            }
        }.padding()
    }
}
