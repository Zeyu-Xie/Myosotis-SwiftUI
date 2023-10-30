//
//  Page_String.swift
//  Myosotis SwiftUI
//
//  Created by Acan on 2023/10/23.
//

import Foundation
import SwiftUI

struct Page_Date: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(alignment: .leading) {
                
                
                Text("Date").font(.title).padding(.bottom).bold().foregroundColor(.blue)
                Text("""
                \(Text("获得日期").bold().font(.system(.body, design: .default)))
                let currentDate = Date()
                """).font(.system(.body, design: .monospaced)).padding(.bottom)
                Text("""
                \(Text("日期转化成要求的字符串").bold().font(.system(.body, design: .default)))
                // DataFormatter()
                let dateformatter = DateFormatter()
                // dateStyle
                dateformatter.dateStyle = .full
                // timeStyle
                dateformatter.timeStyle = .long
                dateformatter.dateFormat = "YYYY-MM-dd HH:mm:ss"
                let dateString = dateformatter.string(from: currentdate)
                print(dateString)
                // 备注：显示你当前操作的时间，格式如上
                """).font(.system(.body, design: .monospaced)).padding(.bottom)
                
                Text("""
                \(Text("指定的字符串转化为 Date").bold().font(.system(.body, design: .default)))
                let dateString = "2023-10-30"let dateformatter = DateFormatter()
                dateformatter.dateFormat = "YYYY-MM-dd"
                let newDate = dateformatter.date(from: dateString)
                print(newDate)
                """).font(.system(.body, design: .monospaced)).padding(.bottom)
            }
        }.padding()
    }
}
