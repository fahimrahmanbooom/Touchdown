//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by Fahim Rahman on 9/4/21.
//

import SwiftUI

@main
struct TouchdownApp: App {
    var body: some Scene {
        WindowGroup {
            TouchdownView()
                .environmentObject(Shop())
        }
    }
}
