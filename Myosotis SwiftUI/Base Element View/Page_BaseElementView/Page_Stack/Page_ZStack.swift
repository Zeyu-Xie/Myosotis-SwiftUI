//
//  Page_VStack.swift
//  Myosotis SwiftUI
//
//  Created by Acan on 2023/10/12.
//

import Foundation
import SwiftUI

struct Page_ZStack : View {
    var body: some View {
        VStack(spacing: 20) {
            ZStack(alignment: .topLeading) {
                Text("One")
                Text("Two")
                Text("Three")
            }
            ZStack(alignment: .top) {
                Text("One")
                Text("Two")
                Text("Three")
            }
            ZStack(alignment: .topTrailing) {
                Text("One")
                Text("Two")
                Text("Three")
            }
            ZStack(alignment: .leading) {
                Text("One")
                Text("Two")
                Text("Three")
            }
            ZStack(alignment: .center) {
                Text("One")
                Text("Two")
                Text("Three")
            }
            ZStack(alignment: .trailing) {
                Text("One")
                Text("Two")
                Text("Three")
            }
            ZStack(alignment: .bottomLeading) {
                Text("One")
                Text("Two")
                Text("Three")
            }
            ZStack(alignment: .bottom) {
                Text("One")
                Text("Two")
                Text("Three")
            }
            ZStack(alignment: .bottomTrailing) {
                Text("One")
                Text("Two")
                Text("Three")
            }
        }
    }
}
