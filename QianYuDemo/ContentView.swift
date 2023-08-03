//
//  ContentView.swift
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

extension UIColor {
    convenience init(hex: Int, alpha: CGFloat = 1.0) {
        let red = CGFloat((hex & 0xFF0000) >> 16) / 255.0
        let green = CGFloat((hex & 0x00FF00) >> 8) / 255.0
        let blue = CGFloat(hex & 0x0000FF) / 255.0
        self.init(red: red, green: green, blue: blue, alpha: alpha)
    }
}

//定义消息视图
struct MessageContent:View {
    var body: some View {
        HStack(alignment: .top, spacing: 2) {
            Image("touxiang").resizable().frame(width: 40, height: 40)
            VStack(alignment: .leading, spacing: 4) {
                HStack(alignment: .top, spacing: 4) {
                    Text("心爱的小摩托").foregroundColor(Color(UIColor(hex: 0xA4A9B3))).font(Font.system(size: 12))
                    Image("ic_nv").resizable().frame(width: 12, height: 12)
                }
            }
            Spacer()
        }.padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
//        ContentView()
//        ContentImage()
//        Label()
//        RowContent()
        MessageContent()
    }
}
