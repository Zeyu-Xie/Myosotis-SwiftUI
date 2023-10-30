//
//  File.swift
//  Myosotis SwiftUI
//
//  Created by Acan on 2023/10/12.
//

import Foundation
import SwiftUI

@available(iOS 16.0, macOS 13.0, *)
struct Page_NavigationStack_Usage_4: View {
    @StateObject var chapterVM = ChapterViewModel()
    
    var body: some View {
        NavigationStack(path: $chapterVM.path) {
            List(chapterVM.all) { chapter in
                NavigationLink(chapter.name, value: chapter)
            }.navigationDestination(for: Chapters.self) { chapter in
                _ChapterDetailView(chapter: chapter)
            }
            .navigationTitle("多层路径（封装）")
        }.environmentObject(chapterVM)
    }
}

@available(iOS 16.0, macOS 13.0, *)
struct _ChapterDetailView: View {
    var chapter: Chapters
    
    @EnvironmentObject var chapterVM: ChapterViewModel
    var body: some View {
        Group {
            if chapter.children.isEmpty {
                VStack(alignment: .leading, spacing: 20) {
                    Text("There's nothing here.").font(.title).fontWeight(.bold).foregroundColor(.blue)
                    Text(chapter.name)
                }.navigationTitle(chapter.name)
            } else {
                List(chapter.children) { item in
                    NavigationLink(item.name, value: item)
                }.navigationDestination(for: Chapters.self) { chapter in
                    ChapterDetailView(chapter: chapter)
                }
                .navigationTitle(chapter.name)
            }
        }.toolbar {
            Button {
                chapterVM.path.removeLast(chapterVM.path.count)
            } label: {
                Text("根部页面")
            }
        }
    }
}
