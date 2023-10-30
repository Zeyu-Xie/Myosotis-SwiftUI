//
//  File.swift
//  Myosotis SwiftUI
//
//  Created by Acan on 2023/10/12.
//

import Foundation
import SwiftUI

@available(iOS 16.0, macOS 13.0, *)
struct Page_NavigationStack_Usage_3: View {
    @StateObject var chapterVM = ChapterViewModel()
    var body: some View {
        NavigationStack(path: $chapterVM.path) {
            List(chapterVM.all) { chapter in
                NavigationLink(chapter.name, value: chapter)
            }.navigationDestination(for: Chapters.self) { chapter in
                ChapterDetailView(chapter: chapter)
            }
            .navigationTitle("多层路径")
        }.environmentObject(chapterVM)
    }
}

@available(iOS 16.0, macOS 13.0, *)
struct ChapterDetailView: View {
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
            Menu("Back To") {
                Button {
                    chapterVM.path.removeAll()
                } label: {
                    Text("根部页面")
                }
                ForEach(chapterVM.path) { path in
                    Button {
                        if let index = chapterVM.path.firstIndex(of: path) {
                            chapterVM.path = Array(chapterVM.path[0...index])
                        }
                    } label: {
                        Text(path.name)
                    }
                }
            }
        }
    }
}

struct Chapters: Identifiable, Hashable {
    var id = UUID()
    var name: String
    var children: [Chapters] = []
}

class ChapterViewModel: ObservableObject {
    @Published var path: [Chapters] = []
    let all: [Chapters] = [
        Chapters(name: "简介文档", children: [
            Chapters(name: "项目", children: [
                Chapters(name: "新建", children: [
                    Chapters(name: "新建项目"),
                    Chapters(name: "新建文件")
                ]),
                
                Chapters(name: "操作", children: [
                    Chapters(name: "操作区域"),
                    Chapters(name: "编辑器操作"),
                    Chapters(name: "项目设置")
                ]),
            ]),
            Chapters(name: "常用快捷键"),
            Chapters(name: "项目图片"),
            Chapters(name: "添加 View 元素"),
            Chapters(name: "运行项目"),
            Chapters(name: "测试调试"),
            Chapters(name: "iPad Playgrounds", children: [
                Chapters(name: "新建 Playgrounds 项目"),
                Chapters(name: "文件管理"),
                Chapters(name: "代码编辑区域"),
                Chapters(name: "应用预览和运行")
            ])
        ]),
        
        Chapters(name: "可用资源", children: [
            Chapters(name: "Bug 及临时解决方案"),
            Chapters(name: "学习资源")
        ]),
        
        Chapters(name: "系统形状", children: [
            Chapters(name: "Circle"),
            Chapters(name: "Ellipse"),
            Chapters(name: "Rectangle"),
            Chapters(name: "RoundedRectangle"),
            Chapters(name: "Capsule"),
            Chapters(name: "Color")
        ])
    ]
}
