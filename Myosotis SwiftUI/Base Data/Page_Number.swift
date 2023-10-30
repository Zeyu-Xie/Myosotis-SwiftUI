//
//  Page_String.swift
//  Myosotis SwiftUI
//
//  Created by Acan on 2023/10/23.
//

import Foundation
import SwiftUI

struct Page_Number: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(alignment: .leading) {
                Text("数字").font(.title).padding(.bottom).bold().foregroundColor(.blue)
                
                Text("""
                \(Text("Int").bold())
                在 32 位平台上，Int 和 Int32 长度相同（范围：-2,147,483,648 ~ 2,147,483,647）
                在 64 位平台上，Int 和 Int64 长度相同
                """).padding(.bottom)
                
                Text("""
                \(Text("UInt（无符号类型）").bold())
                在 32 位平台上，UInt 和 UInt32 长度相同
                在 64 位平台上，UInt 和 UInt64 长度相同
                \(Text("不建议使用 UInt，否则可能会面临较麻烦的类型转换问题").foregroundColor(.secondary))
                """).padding(.bottom)
                
                Text("""
                \(Text("浮点数：Float, Double").bold())
                Double：64 位浮点数
                Float：32 位浮点数
                """).padding(.bottom)
                
                Text("""
                \(Text("随机数").bold())
                \(Text("let random = Int.random(in: 1...100)").font(.system(.body, design: .monospaced)))
                本次生成结果：\(Text(String(Int.random(in: 1...100))))
                """).padding(.bottom)
                
                Text("格式化").font(.title).padding(.bottom).bold().foregroundColor(.blue)
                
                Text("""
                \(Text("字符串中保留小数位").bold())
                \(Text("let lakers = String(format: \"%d Champigns=s\", 17)").font(.system(.body, design: .monospaced)))
                \(Text("print(lakers)").font(.system(.body, design: .monospaced)))
                \(Text("// 17 Champigns").font(.system(.body, design: .monospaced)))
                \(Text("let scores = String(format: \"%.2f Scores in Average\", 94.345)").font(.system(.body, design: .monospaced)))
                \(Text("print(scores)").font(.system(.body, design: .monospaced)))
                \(Text("// 94.34 Scores in Average").font(.system(.body, design: .monospaced)))
                \(Text("let miss = String(format: \"%f Scores Lost in Average\", 4.5)").font(.system(.body, design: .monospaced)))
                \(Text("print(miss)").font(.system(.body, design: .monospaced)))
                \(Text("// 4.500000 Scores Lost in Average ").font(.system(.body, design: .monospaced)))
                """).padding(.bottom)
                
                Text("""
                \(Text("数字中保留小数位").bold())
                \(Text("let number: Double = 2.3444").font(.system(.body, design: .monospaced)))
                \(Text("let formatString = NumberFormatter()").font(.system(.body, design: .monospaced)))
                \(Text("formatString.numberStyle = .decimal()").font(.system(.body, design: .monospaced)))
                \(Text("formatString.maximumFractionDigits = 2").font(.system(.body, design: .monospaced)))
                \(Text("print(\"(formatString.string(from: NSNumber(value: number)))\")").font(.system(.body, design: .monospaced)))
                """)

            }.frame(alignment: .leading)
        }.padding()
    }
}
