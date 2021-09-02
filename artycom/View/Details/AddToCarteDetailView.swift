//
//  AddToCarteDetailView.swift
//  artycom
//
//  Created by Skander Bahri on 02/09/2021.
//

import SwiftUI

struct AddToCarteDetailView: View {
    var body: some View {
        Button(action: {}, label: {
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
                red: simpleProduct.red,
                green: simpleProduct.green,
                blue: simpleProduct.blue
            )
        )
        .clipShape(Capsule())
    }
}

struct AddToCarteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCarteDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
