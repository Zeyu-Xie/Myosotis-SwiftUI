//
//  Page_String.swift
//  Myosotis SwiftUI
//
//  Created by Acan on 2023/10/23.
//

import Foundation
import SwiftUI

struct Page_Bool: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(alignment: .leading) {
                Text("布尔值：Bool").font(.title).padding(.bottom).bold().foregroundColor(.blue)
                Text("""
                \(Text("变换值").bold().font(.system(.body, design: .default)))
                var show: Bool = true
                show.toggle()
                print(show)
                // false
                show.toggle()
                print(show)
                // true
                """).font(.system(.body, design: .monospaced)).padding(.bottom)
                
                Text("""
                \(Text("?:").bold().font(.system(.body, design: .default)))
                Text(show ? \"显示\" : \"隐藏\")
                """).font(.system(.body, design: .monospaced)).padding(.bottom)
                
            }.frame(alignment: .leading)
        }.padding()
    }
}
