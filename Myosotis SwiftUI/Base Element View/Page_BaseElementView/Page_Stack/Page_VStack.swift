//
//  Page_VStack.swift
//  Myosotis SwiftUI
//
//  Created by Acan on 2023/10/12.
//

import Foundation
import SwiftUI

struct Page_VStack : View {
    var body: some View {
        VStack(spacing: 20) {
            VStack(alignment: .leading, spacing: 20) {
                Text("Top")
                Text("Center")
                Text("Bottom")
            }
        }
    }
}
