//
//  Myosotis_SwiftUIApp.swift
//  Myosotis SwiftUI
//
//  Created by 谢泽钰 on 2023/8/23.
//

import SwiftUI

@main
struct Myosotis_SwiftUIApp: App {
    
    @NSApplicationDelegateAdaptor(AppDelegate.self) private var appDelegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }.commands {
            SidebarCommands()
            ToolbarCommands()
        }
        
        Settings {
            Page_Settings()
        }
    }
}
