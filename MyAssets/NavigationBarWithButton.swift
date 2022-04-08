//
//  NavigationBarWithButton.swift
//  MyAssets
//
//  Created by 정은경 on 2022/04/01.
//

import SwiftUI

struct NavigationBarWithButton: ViewModifier {
    var title: String = ""
    func body(content: Content) -> some View {
        return content.toolbar {
            ToolbarItem(placement: .navigationBarLeading){
                Text(title)
                    .font(.system(size: 24, weight: .bold))
                    .padding()
            }
            ToolbarItem(placement: .navigationBarTrailing){
                Button(action: {
                    print("자산추가버튼 Tapped")
                }, label: {
                    Image(systemName: "plus")
                    Text("자산추가")
                        .font(.system(size: 12))
                })
                .frame(height: /*@START_MENU_TOKEN@*/18.0/*@END_MENU_TOKEN@*/)
                .accentColor(Color.black)
                .padding(EdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8))
                .overlay(RoundedRectangle(cornerRadius: 10)
                    .stroke())
            }
            
        }
        .navigationBarTitleDisplayMode(.inline)
        .onAppear{
            let appearance = UINavigationBarAppearance()
            appearance.configureWithTransparentBackground()
            appearance.backgroundColor = UIColor(white: 1, alpha: 0.5)
            UINavigationBar.appearance().standardAppearance = appearance
            UINavigationBar.appearance().compactAppearance = appearance
            UINavigationBar.appearance().scrollEdgeAppearance = appearance
        }
    }

}

extension View {
    func navigationBarWithButtonStyle(_ title: String) -> some View {
        return self.modifier(NavigationBarWithButton(title: title))
    }
}

struct NavigationBarWithButton_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            Color.gray.edgesIgnoringSafeArea(.all)
                .navigationBarWithButtonStyle("내 자산")
                
        }
    }
}
