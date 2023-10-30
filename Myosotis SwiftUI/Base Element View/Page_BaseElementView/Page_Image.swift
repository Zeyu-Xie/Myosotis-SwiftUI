//
//  Page_Image.swift
//  Myosotis SwiftUI
//
//  Created by Acan on 2023/10/13.
//

import Foundation
import SwiftUI

struct Page_Image: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text("1. 图片名称").foregroundColor(.blue).fontWeight(.bold).font(.title)
                HStack {
                    Image("Hydrangea").resizable().aspectRatio(contentMode: .fit).frame(width: 256)
                    Image("Wisteria").resizable().aspectRatio(contentMode: .fit).frame(width: 256)
                    Image("Carnation").resizable().aspectRatio(contentMode: .fit).frame(width: 256)
                }
                Text("2. 图片和无障碍使用标签").foregroundColor(.blue).fontWeight(.bold).font(.title)
                HStack {
                    Text("留坑，暂时没学会")
                }
                Text("3. System Image").foregroundColor(.blue).fontWeight(.bold).font(.title)
                HStack {
                    Image(systemName: "person").resizable().aspectRatio(contentMode: .fit).frame(width: 48).padding(.horizontal)
                    Image(systemName: "person.circle").resizable().aspectRatio(contentMode: .fit).frame(width: 48).padding(.horizontal)
                    Image(systemName: "person.fill").resizable().aspectRatio(contentMode: .fit).frame(width: 48).padding(.horizontal)
                    Image(systemName: "person.circle.fill").resizable().aspectRatio(contentMode: .fit).frame(width: 48).padding(.horizontal)
                    Image(systemName: "person.fill.turn.right").resizable().aspectRatio(contentMode: .fit).frame(width: 48).padding(.horizontal)
                    Image(systemName: "person.slash").resizable().aspectRatio(contentMode: .fit).frame(width: 48).padding(.horizontal)
                }.foregroundColor(.secondary)
                
                Text("4. 网络获取图片").foregroundColor(.blue).fontWeight(.bold).font(.title)
                HStack {
                    Text("留坑，需要用到第三方库")
                }
                
                Text("5. UIImage").foregroundColor(.blue).fontWeight(.bold).font(.title)
                HStack {
                    Text("用于 iOS, tvOS 和 watchOS")
                }
                
                Text("6. NSImage").foregroundColor(.blue).fontWeight(.bold).font(.title)
                VStack(alignment: .leading, spacing: 20) {
                    Text("用于 macOS")
                    
                    Text("写法 1").fontWeight(.bold).foregroundColor(.teal)
                    if let image = NSImage(named: "slack") {
                        Image(nsImage: image)
                    } else {
                        Image("Hydrangea").resizable().aspectRatio(contentMode: .fit).frame(width: 64)
                    }
                    
                    Text("写法 2").fontWeight(.bold).foregroundColor(.teal)
                    let image_2 = NSImage(named: "Hydrangea")!
                    Image(nsImage: image_2).resizable().aspectRatio(contentMode: .fit).frame(width: 64)
                }
            }.frame(alignment: .leading).padding()
            
            
            
        }
    }
}
