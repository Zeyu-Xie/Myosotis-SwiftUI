//
//  Page_Circle.swift
//  Myosotis SwiftUI
//
//  Created by Acan on 2023/10/12.
//

import Foundation
import SwiftUI

struct Page_Shapes: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            Circle()
                .stroke(lineWidth: 1)
                .frame(width: 100).padding()
            Ellipse().stroke(lineWidth: 1)
                .frame(width: 100, height: 61.8).padding()
            Rectangle().stroke(lineWidth: 1)
                .frame(width: 100, height: 61.8).padding()
            RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 1)
                .frame(width: 100,height: 61.8).padding()
            Capsule().stroke(lineWidth: 1)
                .frame(width: 100,height: 61.8).padding()
        }
    }
}
