//
//  File.swift
//  Myosotis SwiftUI
//
//  Created by Acan on 2023/10/12.
//

import Foundation
import SwiftUI

struct Page_NavigationStack_Usage_1: View {
    var body: some View {
        NavigationStack {
            List(1..<11) { index in
                NavigationLink("The No.\(index) row.", value: index)
            }.navigationTitle("无路径")
        }
    }
}
