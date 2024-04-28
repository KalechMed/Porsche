//
//  CarViewModel.swift
//  Porsche
//
//  Created by Mohamed  on 28/4/2024.
//

import SwiftUI

public class CarViewModel: ObservableObject {
    @Published var cars: [Car] = []
    init() {
           let url = URL(fileURLWithPath: "/Users/mohamed/Desktop/Porsche/Porsche/iOS/Code/Common/Utils/cars.Json")
           do {
               let data = try Data(contentsOf: url)
               let decoder = JSONDecoder()
               self.cars = try decoder.decode([Car].self, from: data)
               // print("Cars loaded:", self.cars)
           } catch {
               print("Error decoding JSON: \(error)")
           }
       }
}
