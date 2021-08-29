//
//  LogoView.swift
//  artycom
//
//  Created by Skander Bahri on 27/08/2021.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        HStack (spacing: 4){
            Text("work".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.red)
            
            
            Image("logo-dark")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30, alignment: .center)
            
            
            Text("flow".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.blue)
        }//: HStack
    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
