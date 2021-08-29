//
//  CategoryGrigView.swift
//  artycom
//
//  Created by Skander Bahri on 29/08/2021.
//

import SwiftUI

struct CategoryGrigView: View {
    var body: some View {
        ScrollView (.horizontal, showsIndicators: false, content :{
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: [], content: {
                Section(
                    header: SectionView(rotateClockWise: false),
                    footer: SectionView(rotateClockWise: true)
                ) {
                    ForEach(categories) { category in
                        CategoryItemView(category: category)
                    }
                }
            })
            .frame(height: 140)
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
        })//: SCROLLVIEW
    }
}

struct CategoryGrigView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGrigView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
