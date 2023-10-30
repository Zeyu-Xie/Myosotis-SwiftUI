//
//  Page_OnTapGesture.swift
//  Myosotis SwiftUI
//
//  Created by Acan on 2023/10/12.
//

import Foundation
import SwiftUI

struct Page_OnTapGesture: View {
    
    @State private var isAlert: Bool = false
    
    var body: some View {
        VStack {
            Text("Click Here").onTapGesture {
                isAlert = true
            }
        }.alert(isPresented: $isAlert) {
            Alert(title: Text("Hydrangea SwiftUI"), message: Text("Tap Gesture Received"))
        }
    }
}
