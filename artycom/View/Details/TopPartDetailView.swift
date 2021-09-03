//
//  TopPartDetailView.swift
//  artycom
//
//  Created by Skander Bahri on 02/09/2021.
//

import SwiftUI

struct TopPartDetailView: View {
    // MARK: - PROPERTIES
    @State private var isAnimated: Bool = false
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        HStack(alignment: .center, spacing: 6, content: {
            //PRICE
            VStack(alignment: .leading, spacing: 6, content: {
                Text("Price")
                    .fontWeight(.semibold)
                Text(shop.selectedProduct?.formattedPrice ?? simpleProduct.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35, anchor: .leading)
            })//: VSTACK
            .offset(y: isAnimated ? -50 : -70)
            
            Spacer()
            //PHOTO
            Image(shop.selectedProduct?.image ?? simpleProduct.image)
                .resizable()
                .scaledToFit()
                .offset(y: isAnimated ? 0 : -35)
        })//: HSTACK
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.75)){
                isAnimated.toggle()
            }
        })
    }
}

struct TopPartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TopPartDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
