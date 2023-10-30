//
//  Page_OnTapGesture.swift
//  Myosotis SwiftUI
//
//  Created by Acan on 2023/10/12.
//

import Foundation
import SwiftUI

struct Page_OnAppear: View {
    
    @State private var isAlert: Bool = false
    
    var body: some View {
        VStack {
            Text("Caelum non animum mutant qui trans mare currunt.").onAppear() {
                isAlert = true
            }
        }.alert(isPresented: $isAlert) {
            Alert(title: Text("Hydrangea SwiftUI"), message: Text("View Appeared."))
        }
    }
}
