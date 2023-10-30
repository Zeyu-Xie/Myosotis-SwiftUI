//
//  Page_Image.swift
//  Myosotis SwiftUI
//
//  Created by Acan on 2023/10/13.
//

import Foundation
import SwiftUI

struct Page_Button: View {
    
    @State private var isAlert: Bool = false
    
    var body: some View {
        
        
        ScrollView(showsIndicators: false) {
            VStack(alignment: .leading, spacing: 20) {
                Section {
                    Text("1. 使用文字创建").foregroundColor(.blue).font(.title).fontWeight(.bold)
                    Button("Click This") {
                        isAlert = true
                    }
                }
                
                Section {
                    Text("2. 使用本地化文字创建").foregroundColor(.blue).font(.title).fontWeight(.bold)
                    Text("留坑，不懂")
                }
                
                Section {
                    Text("3. 使用 View 创建").foregroundColor(.blue).font(.title).fontWeight(.bold)
                    Button {
                        isAlert = true
                    } label: {
                        Image(systemName: "person")
                        Text("Click This")
                    }
                }
                
                Section {
                    Text("4. 使用按钮角色创建").foregroundColor(.blue).font(.title).fontWeight(.bold)
                    Text("就是说，在很多使用按钮的地方，可以按照 Button 的角色设置样式")
                    Text("e.g. 删除操作，可以设置为 .destructive 样式，按钮会显示为**红色**").foregroundColor(.secondary)
                    HStack {
                        Button("Delete Button", role: .destructive) {
                            isAlert = true
                        }
                        Button("Cancel Button", role: .cancel) {
                            isAlert = true
                        }
                    }
                }
            }.alert(isPresented: $isAlert) {
                Alert(title: Text("Test Alert"), message: Text("Button Created with Different Elements"))
            }
        }.padding()
    }
}
