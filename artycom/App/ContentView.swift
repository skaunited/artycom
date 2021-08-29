//
//  ContentView.swift
//  artycom
//
//  Created by Skander Bahri on 23/08/2021.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTY
    // MARK: - BODY
    var body: some View {
        ZStack {
            VStack(spacing:0){
                NavigationBar()
                    .padding(.horizontal, 15)
                    .padding(.bottom)
                    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                    .background(Color.white)
                    .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
                ScrollView(.vertical, showsIndicators: false, content: {
                    VStack(spacing:0){
                        FeaturedTabView()
                            .frame(minHeight: 256)
                            .padding(.vertical, 10)
                        CategoryGrigView()
                        FooterView()
                            .padding(.horizontal )
                    }//VStack
                }) //ScrollView
                
            } //VSTack
            .background(colorBackground.ignoresSafeArea(.all, edges: .all))
        } //ZStack
        .ignoresSafeArea(.all, edges: .top)
    }
}
// MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
