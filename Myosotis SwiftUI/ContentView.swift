//
//  ContentView.swift
//  Myosotis SwiftUI
//
//  Created by Acan on 2023/8/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                Section {
                    Text("Shapes").foregroundStyle(.secondary).font(.callout)
                    
                    NavigationLink(destination: Page_Shapes().navigationTitle("Shapes")) {
                        Image(systemName: "s.square").foregroundColor(.blue)
                        Text("Shapes")
                    }
                }
                
                Section {
                    Text("Base Element View").foregroundStyle(.secondary).font(.callout)
                    
                    NavigationLink(destination: Page_BaseElementView().navigationTitle("Base Element View")) {
                        Image(systemName: "b.square").foregroundColor(.blue)
                        Text("Base Element View")
                    }
                }
                
                Section {
                    Text("Element General Modifiers").foregroundStyle(.secondary).font(.callout)
                    NavigationLink(destination: Page_OnTapGesture().navigationTitle("OnTapGesture")) {
                        Image(systemName: "o.square").foregroundColor(.blue)
                        Text("OnTapGesture")
                    }
                    NavigationLink(destination: Page_OnAppear().navigationTitle("OnAppear")) {
                        Image(systemName: "o.square").foregroundColor(.blue)
                        Text("OnAppear")
                    }
                    NavigationLink(destination: Page_OnDisappear().navigationTitle("OnDisappear")) {
                        Image(systemName: "o.square").foregroundColor(.blue)
                        Text("OnDisappear")
                    }
                    
                }
                
                //                Spacer()
                
                Section {
                    Text("Views").foregroundStyle(.secondary).font(.callout)
                    NavigationLink(destination: Page_VStack().navigationTitle("VStack")) {
                        Image(systemName: "v.square").foregroundColor(.blue)
                        Text("VStack")
                    }
                    NavigationLink(destination: Page_HStack().navigationTitle("HStack")) {
                        Image(systemName: "h.square").foregroundColor(.blue)
                        Text("HStack")
                    }
                }
                
                Section {
                    Text("Global Elements").foregroundStyle(.secondary).font(.callout)
                    NavigationLink(destination: Page_NavigationView().navigationTitle("NavigationView")) {
                        Image(systemName: "n.square").foregroundColor(.blue)
                        Text("NavigationView")
                    }
                    NavigationLink(destination: Page_NavigationStack().navigationTitle("NavigationStack")) {
                        Image(systemName: "n.square").foregroundColor(.blue)
                        Text("NavigationStack")
                    }
                    NavigationLink(destination: Page_StatusBar().navigationTitle("StatusBar")) {
                        Image(systemName: "s.square").foregroundColor(.blue)
                        Text("StatusBar")
                    }
                    NavigationLink(destination: Page_Tabbar().navigationTitle("Tabbar")) {
                        Image(systemName: "t.square").foregroundColor(.blue)
                        Text("Tabbar")
                    }
                }
                
                Section {
                    Text("Base Data").foregroundStyle(.secondary).font(.callout)
                    NavigationLink(destination: Page_String().navigationTitle("String")) {
                        Image(systemName: "s.square").foregroundColor(.blue)
                        Text("String")
                    }
                    NavigationLink(destination: Page_Number().navigationTitle("Number")) {
                        Image(systemName: "n.square").foregroundColor(.blue)
                        Text("Number")
                    }
                    NavigationLink(destination: Page_Bool().navigationTitle("Bool")) {
                        Image(systemName: "b.square").foregroundColor(.blue)
                        Text("Bool")
                    }
                    NavigationLink(destination: Page_Date().navigationTitle("Date")) {
                        Image(systemName: "d.square").foregroundColor(.blue)
                        Text("Date")
                    }
                    NavigationLink(destination: Page_Array().navigationTitle("Array")) {
                        Image(systemName: "a.square").foregroundColor(.blue)
                        Text("Array")
                    }
                    NavigationLink(destination: Page_Dictionary().navigationTitle("Dictionary")) {
                        Image(systemName: "d.square").foregroundColor(.blue)
                        Text("Dictionary")
                    }
                    NavigationLink(destination: Page_Set().navigationTitle("Set")) {
                        Image(systemName: "s.square").foregroundColor(.blue)
                        Text("Set")
                    }
                }
                
                Section {
                    Text("Data Structures").foregroundStyle(.secondary).font(.callout)
                }
                
                Section {
                    Text("Common Property Wrappers").foregroundStyle(.secondary).font(.callout)
                }
                
                Section {
                    Text("Function Syntax").foregroundStyle(.secondary).font(.callout)
                }
                
            }.listStyle(SidebarListStyle())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
