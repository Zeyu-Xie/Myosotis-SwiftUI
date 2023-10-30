//
//  Page_Image.swift
//  Myosotis SwiftUI
//
//  Created by Acan on 2023/10/13.
//

import Foundation
import SwiftUI

struct Page_Text: View {
    
    @State private var currentDate: Date = Date()
    
    var body: some View {
        
        let twoDays: TimeInterval = 2*24*60*60
        let twoDaysLater = currentDate.advanced(by: twoDays)
        
        ScrollView(showsIndicators: false) {
            VStack(alignment: .leading, spacing: 20) {
                
                Section {
                    Text("Welcome to the Text Page").font(.largeTitle).foregroundColor(.blue).fontWeight(.bold)
                    
                    Text("🎨 You can change the color of the text.").foregroundColor(.teal)
                    
                    Text("You can change the size of the text as well.").font(.callout).foregroundColor(.secondary)
                    
                    Text("The date and time is: \(currentDate)")
                }
                
                Divider()
                
                Section {
                    Text("1. String").font(.title).foregroundColor(.blue).fontWeight(.bold)
                    Text("Hello World")
                }
                
                Section {
                    Text("2. \"+\" Operator").font(.title).foregroundColor(.blue).fontWeight(.bold)
                    Text("Hello World. ").foregroundColor(.primary)+Text("This is Acan.").foregroundColor(.secondary)
                }
                
                Section {
                    Text("3. Image").font(.title).foregroundColor(.blue).fontWeight(.bold)
                    Text("Hello World. ") + Text(Image(systemName: "person"))
                }
                
                Section {
                    Text("4. Attributed String").font(.title).foregroundColor(.blue).fontWeight(.bold)
                    Text("You can **learn** to use *Attributed String* here: [Open Link](https://developer.apple.com/documentation/foundation/attributedstring)")
                    Text("In fact you have more possible attributes to add in SwiftUI")
                }
                
                Section {
                    Text("5. Date and Time").font(.title).foregroundColor(.blue).fontWeight(.bold)
                    Text("Different Styles of Date").font(.title2).foregroundStyle(.teal)
                    HStack {
                        Text(currentDate, style: .time)
                        Divider()
                        Text(currentDate, style: .date)
                        Divider()
                        Text(currentDate, style: .relative)
                        Divider()
                        Text(currentDate, style: .offset)
                        Divider()
                        Text(currentDate, style: .timer)
                    }
                    Text("Date as Variaties").font(.title2).foregroundStyle(.teal)
                    VStack(alignment: .leading, spacing: 20) {
                        Text("Now: ").fontWeight(.bold) + Text(currentDate, style: .date)
                        Text("Two Days Later: ").fontWeight(.bold) + Text(twoDaysLater, style: .date)
                    }
                }
            }
        }.padding().onAppear {
            Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
                currentDate = Date()
            }
        }
    }
}
