//
//  CategoryModel.swift
//  artycom
//
//  Created by Skander Bahri on 29/08/2021.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
