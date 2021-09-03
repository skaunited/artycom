//
//  Shop.swift
//  artycom
//
//  Created by Skander Bahri on 04/09/2021.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
