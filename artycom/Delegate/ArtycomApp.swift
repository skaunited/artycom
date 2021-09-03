//
//  ArtycomApp.swift
//  artycom
//
//  Created by Skander Bahri on 04/09/2021.
//

import SwiftUI

@main
struct ArtycomApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
