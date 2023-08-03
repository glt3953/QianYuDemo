//
//  ContentView.swift
//  QianYuDemo
//
//  Created by NingXia on 2023/8/3.
//

import SwiftUI

extension UIColor {
    convenience init(hex: Int, alpha: CGFloat = 1.0) {
        let red = CGFloat((hex & 0xFF0000) >> 16) / 255.0
        let green = CGFloat((hex & 0x00FF00) >> 8) / 255.0
        let blue = CGFloat(hex & 0x0000FF) / 255.0
        self.init(red: red, green: green, blue: blue, alpha: alpha)
    }
}

struct DengjiLabel: View {
    var iconName: String
    var text: String
    var body: some View {
        HStack(spacing: 2) {
            Image(iconName)
                .resizable()
                .frame(width: 10, height: 10)
                .padding(EdgeInsets(top: 1, leading: 1, bottom: 1, trailing: 0))
            Text(text)
                .bold()
                .font(Font.system(size: 8))
                .foregroundColor(Color(UIColor(hex: 0xFFFFFF)))
                .lineLimit(1)
                .frame(width: 12, height: 12)
                .padding(EdgeInsets(top: 1, leading: 0, bottom: 1, trailing: 0))
        }
        .background(Color.green)
        .cornerRadius(6)
    }
}

struct ZhanglaoLabel: View {
    var iconName: String
    var text: String
    var body: some View {
        Image(iconName)
            .resizable()
            .frame(width: 32, height: 12)
        Text(text)
            .bold()
            .font(Font.system(size: 8))
            .foregroundColor(Color(UIColor(hex: 0xFFFFFF)))
            .lineLimit(2)
            .frame(width: 20, height: 12)
            .padding(EdgeInsets(top: 1, leading: -42, bottom: 1, trailing: 0))
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
                    DengjiLabel(iconName: "dengji", text: "54").frame(width: 26, height: 12)
                    ZhanglaoLabel(iconName: "zhanglao", text: "长老").frame(width: 32, height: 12)
                }
                Text("：当前文本是用户发的一段话，可以换行的一段话")
                    .bold()
                    .font(Font.system(size: 12))
                    .foregroundColor(Color(UIColor(hex: 0x181E25)))
                    .frame(width: 260, height: 40)
                    .padding(EdgeInsets(top: -25, leading: 0, bottom: 0, trailing: 0))
//                    .lineLimit(nil)
//                    .multilineTextAlignment(.leading)
//                    .tabViewStyle(PageTabViewStyle())
//                    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
//                    .tabItemAttributes(TabItemAttributes(label: ""), selection: {})
//                    .padding(.leading, 20)//设置首行缩进
            }.padding(EdgeInsets(top: 5, leading: 0, bottom: 0, trailing: 0))
        }
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
