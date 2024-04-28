//
//  PorscheApp.swift
//  Porsche
//
//  Created by Mohamed  on 16/3/2024.
//

import SwiftUI

@main
struct PorscheApp: App {
    @State private var defaultCar: Car = Car(
        modelName: "911Carrera4S",
        launchTime: 3.4,
        horsePower: 443,
        topSpeed: 190,
        co2: "238.0",
        consumption: "10.0",
        torque: [
            Torque(rpm: 1000, torqueValue: 450),
            Torque(rpm: 1500, torqueValue: 460),
            Torque(rpm: 2000, torqueValue: 470),
            Torque(rpm: 2500, torqueValue: 480),
            Torque(rpm: 3000, torqueValue: 490)
        ],
        name: "911 Carrera4S"
    )
    var body: some Scene {
        WindowGroup {
            MainView(selectedCar: defaultCar)
        }
    }
}
