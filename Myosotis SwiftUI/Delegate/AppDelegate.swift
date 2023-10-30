//
//  AppDelegate.swift
//  Myosotis SwiftUI
//
//  Created by Acan on 2023/10/12.
//

import Foundation
import SwiftUI

@MainActor
final class AppDelegate: NSObject, NSApplicationDelegate, NSWindowDelegate, NSMenuDelegate {
    
    var statusBarItem: NSStatusItem!
    var window: NSWindow?
    
    func applicationDidFinishLaunching(_ notification: Notification) {
        
        self.statusBarItem = NSStatusBar.system.statusItem(withLength: CGFloat(NSStatusItem.variableLength))
        if let button = self.statusBarItem.button {
            button.image = NSImage(systemSymbolName: "cat.fill", accessibilityDescription: "Myosotis SwiftUI")
        }
        let menu = NSMenu()
        
        menu.addItem(NSMenuItem(title: "Open Main Window", action: #selector(openMainWindow(_:hasVisibleWindows:)), keyEquivalent: ""))
        menu.addItem(NSMenuItem.separator())
        menu.addItem(NSMenuItem(title: "Quit", action: #selector(NSApplication.terminate(_:)), keyEquivalent: "Q"))
        
        self.statusBarItem.menu = menu
        
        NSApp.delegate = self
        
        window = NSApplication.shared.windows[0]
        window?.isReleasedWhenClosed = false
        window?.delegate = self
    }
    
    func applicationShouldHandleReopen(_ sender: NSApplication, hasVisibleWindows flag: Bool) -> Bool {
        window?.makeKeyAndOrderFront(self)
        return true
    }
    
    @objc func openMainWindow(_ sender: NSApplication, hasVisibleWindows flag: Bool) -> Bool {
        window?.makeKeyAndOrderFront(self)
        return true
    }
    
}
