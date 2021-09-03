//
//  ProductDetailView.swift
//  artycom
//
//  Created by Skander Bahri on 02/09/2021.
//

import SwiftUI

struct ProductDetailView: View {
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5, content: {
            //NAVBAR
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            //HEADER
            HeaderDetailView()
                .padding(.horizontal)
            //DETAIL TOP PART
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1 )
            //DETAIL BUTTOM PART
            VStack(alignment: .center, spacing: 0, content: {
                //RATINGS + SIZES
                RatingSizeDetailView()
                    .padding(.top, -20)
                    .padding(.bottom, 12)
                //DESCRIPTION
                ScrollView(.vertical, showsIndicators: false, content: {
                    Text(shop.selectedProduct?.description ??  simpleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray )
                        .multilineTextAlignment(.leading)
                })//: SCROLL
                //QUANTITY + FAVORITE
                QuantityFavoriteDetailView()
                    .padding(.vertical, 10)
                //ADD TO CART
                AddToCarteDetailView()
                    .padding(.bottom, 20)
                Spacer()
            })//: VSTACK
            .padding(.horizontal)
            .background(
                Color.white
                    .clipShape(CustomShape())
                    .padding(.top, -105)
            )

        })
        .zIndex(0)
        .ignoresSafeArea(.all, edges: .all)
        .background(
            Color(
                red: shop.selectedProduct?.red ?? simpleProduct.red,
                green: shop.selectedProduct?.green ?? simpleProduct.green,
                blue: shop.selectedProduct?.blue ?? simpleProduct.blue
            ).ignoresSafeArea(.all, edges: .all)
        )
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .environmentObject(Shop())
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
