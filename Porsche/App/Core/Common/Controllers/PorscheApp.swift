//
//  PorscheApp.swift
//  Porsche
//
//  Created by Mohamed  on 16/3/2024.
//

import SwiftUI

@main
struct PorscheApp: App {
    @StateObject var carViewModel = CarViewModel()
    var body: some Scene {
        WindowGroup {
            MainView(carViewModel: carViewModel)
                .environmentObject(carViewModel)
        }
    }
}
