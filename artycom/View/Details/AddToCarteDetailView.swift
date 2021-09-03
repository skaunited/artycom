//
//  AddToCarteDetailView.swift
//  artycom
//
//  Created by Skander Bahri on 02/09/2021.
//

import SwiftUI

struct AddToCarteDetailView: View {
    @EnvironmentObject var shop: Shop
    var body: some View {
        Button(action: {
            feedback.impactOccurred()
        }, label: {
            Spacer()
            Text("Add to cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()
        }) //: BUTTON
        .padding(15)
        .background(
            Color(
                red: shop.selectedProduct?.red ?? simpleProduct.red,
                green: shop.selectedProduct?.green ?? simpleProduct.green,
                blue: shop.selectedProduct?.blue ?? simpleProduct.blue
            )
        )
        .clipShape(Capsule())
    }
}

struct AddToCarteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCarteDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
