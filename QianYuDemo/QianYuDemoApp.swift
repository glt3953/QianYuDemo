//
//  QianYuDemoApp.swift
//  QianYuDemo
//
//  Created by NingXia on 2023/8/3.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //.leading - 子视图左对齐
        VStack (alignment: .leading, spacing: 10) {
            Text("Hello, World!我在测试")
                .foregroundColor(Color.red)
                .underline()
                .font(Font.system(size: 25))
                .padding()
//            Spacer() //进行两端布局
            Text("Hello, SwiftUI!")
                .foregroundColor(Color.blue)
                .underline()
                .font(Font.system(size: 25))
                .padding()
        }
        .padding(EdgeInsets(top: 30, leading: 0, bottom: 30, trailing: 0)) //组件元素的内间距Padding
    }
}

struct ContentImage:View {
    var body: some View {
        Image("demo")
            .frame(width: 300, height: 300, alignment: .center)
            .clipShape(Circle()) //设置元素的形状
            .shadow(radius: 30) //设置元素的阴影
    }
}

struct Label:UIViewRepresentable {
    //返回一个指定的UIKit组件
    func makeUIView(context: Context) -> UILabel {
        UILabel(frame: .zero)
    }
    //当组件更新时会被调用
    func updateUIView(_ uiView: UILabel, context: Context) {
        uiView.text = "Hello"
    }
}

//定义行视图
struct RowContent:View {
    var body: some View {
        HStack(alignment: .top) {
            Image("touxiang").resizable().frame(width: 70, height: 70)
            VStack(alignment: .leading, spacing: 10) {
                Text("王小丫").bold().font(Font.system(size: 25))
                Text("15137366666").font(Font.system(size: 20))
            }
            Spacer()
        }.padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
    }
}

@main
struct QianYuDemoApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
