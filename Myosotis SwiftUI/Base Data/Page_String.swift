//
//  Page_String.swift
//  Myosotis SwiftUI
//
//  Created by Acan on 2023/10/23.
//

import Foundation
import SwiftUI

struct Page_String: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(alignment: .leading) {
                
                Text("创建字符串").font(.title).padding(.bottom).bold().foregroundColor(.blue)
                
                Text("""
                \(Text("初始化").bold().font(.system(.body, design: .default)))
                var first: String = "Hello World! "
                print(first)
                var second = String("Hello World! ")
                print(second)
                """).font(.system(.body, design: .monospaced)).padding(.bottom)
                
                Text("""
                \(Text("let 和 var").bold().font(.system(.body, design: .default)))
                var first: String = "Changes Available"
                let second: String = "Cannot Change"
                """).font(.system(.body, design: .monospaced)).padding(.bottom)
                
                Text("""
                \(Text("Optional 类型").bold().font(.system(.body, design: .default)))
                var first: String? = "first"
                var second: String? = nil
                """).font(.system(.body, design: .monospaced)).padding(.bottom)
                
                Text("""
                \(Text("! 操作").bold().font(.system(.body, design: .default)))
                Text(first!)
                """).font(.system(.body, design: .monospaced)).padding(.bottom)
                
                Text("字符串操作").font(.title).padding(.bottom).bold().foregroundColor(.blue)
                
                Text("""
                \(Text("格式化").bold().font(.system(.body, design: .default)))
                let a = 24
                let b = String(a)
                print(b)
                
                let lakers = String(formaat: "%d Champions in Total", 17)
                print(lakers)
                
                let scores = String(format: "Average %.2f Scores per Game", 94.345)
                print(scores)
                
                let miss = String(format: "Average %f Scores missed per Game", 4.5)
                print(miss)
                """).font(.system(.body, design: .monospaced)).padding(.bottom)
                
                Text("""
                \(Text("字符串替换").bold().font(.system(.body, design: .default)))
                let a = "Hello SwiftUI for Beginners! "
                print(a.replacingOccurrences(of: "Hello", with: "Hi"))
                """).font(.system(.body, design: .monospaced)).padding(.bottom)
                
                Text("""
                \(Text("字符串分割").bold().font(.system(.body, design: .default)))
                let a = "Hello SwiftUI for Beginners! "
                print(a.split(separator: ""))
                """).font(.system(.body, design: .monospaced)).padding(.bottom)
                
                Text("""
                \(Text("获取字符串中的每个字符").bold().font(.system(.body, design: .default)))
                let a = "Hello"
                for singleCharacter in a {
                    print(singleCharacter)
                }
                """).font(.system(.body, design: .monospaced)).padding(.bottom)
                
                Text("""
                \(Text("首字母大写").bold().font(.system(.body, design: .default)))
                let a = "kobe"
                let capitalized = a.capitalized
                print(capitalized)
                """).font(.system(.body, design: .monospaced)).padding(.bottom)
                
                Text("""
                \(Text("整体大写或小写").bold().font(.system(.body, design: .default)))
                let a = "Kobe"
                let uppercased = a.uppercased()
                let lowercased = a.lowercased()
                print(uppercased)
                print(lowercased)
                """).font(.system(.body, design: .monospaced)).padding(.bottom)
                
            }
        }.padding()
    }
}
