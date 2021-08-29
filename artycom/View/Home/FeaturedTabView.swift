//
//  FeaturedTabView.swift
//  artycom
//
//  Created by Skander Bahri on 29/08/2021.
//
import SwiftUI

struct FeaturedTabView: View {
    var body: some View {
        TabView{
            ForEach(players) { player in
                FeaturedItemView(player: player)
                    .padding(.top)
                    .padding(.horizontal, 15)
            }
        } //TabView
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

struct FeaturedTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedTabView()
            //.previewDevice("iPhone 12 Pro")
            .background(Color.gray)
    }
}
