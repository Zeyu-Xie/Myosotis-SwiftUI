//
//  Page_Image.swift
//  Myosotis SwiftUI
//
//  Created by Acan on 2023/10/13.
//

import Foundation
import SwiftUI

struct Page_Label: View {
    
    @State private var isAlert: Bool = false
    
    var body: some View {
        
        
        ScrollView(showsIndicators: false) {
            VStack(alignment: .leading, spacing: 20) {
                Section {
                    Text("Welcome to the Label Page").foregroundColor(.blue).font(.largeTitle).fontWeight(.bold)
                    Text("Label 是一个按钮 icon 和标题的组合形式")
                }
                
                Divider()
                
                Section {
                    Text("使用自定义图片和文字创建").foregroundColor(.blue).font(.title).fontWeight(.bold)
                    Label("Hello World", image: "Icon")
                }
                
                Section {
                    Text("使用系统图片和文字创建").foregroundColor(.blue).font(.title).fontWeight(.bold)
                    Label("Hello World", systemImage: "tree")
                }
                
                Section {
                    Text("使用 View 创建").foregroundColor(.blue).font(.title).fontWeight(.bold)
                    Label {
                        Text("Title View").foregroundColor(.teal)
                    } icon: {
                        Image(systemName: "person")
                    }
                }
                
                
            }.alert(isPresented: $isAlert) {
                Alert(title: Text("Test Alert"), message: Text("Button Created with Different Elements"))
            }
        }.padding()
    }
}
