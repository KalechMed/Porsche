//
//  CarViewModel.swift
//  Porsche
//
//  Created by Mohamed  on 28/4/2024.
//

import SwiftUI

class CarViewModel: ObservableObject {
    @Published var cars: [Car] = []
    @Published var selectedCar: Car?
    init() {
        loadCars()
        if !cars.isEmpty {
            selectedCar = cars[0]
        }
    }
    private func loadCars() {
        let url = URL(fileURLWithPath: "/Users/mohamed/Desktop/Porsche/Porsche/iOS/Code/Common/Utils/cars.Json")
        do {
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            self.cars = try decoder.decode([Car].self, from: data)
        } catch {
            print("Error decoding JSON: \(error)")
        }
    }
}
