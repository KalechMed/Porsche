//
//  CarViewModel.swift
//  Porsche
//
//  Created by Mohamed  on 28/4/2024.
//

import SwiftUI
import AVFoundation

class CarViewModel: ObservableObject {
    @Published var cars: [Car] = []
    @Published var selectedCar: Car? {
        didSet {
            if let car = selectedCar {
                playEngineSound(for: car.engineSound)
            }
        }
    }
    private var audioPlayer: AVAudioPlayer?
    init() {
        loadCars()
        if !cars.isEmpty {
            selectedCar = cars[0]
        }
    }
    private func loadCars() {
        if let url = Bundle.main.url(forResource: "Cars", withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                self.cars = try decoder.decode([Car].self, from: data)
            } catch {
                print("Error decoding JSON: \(error)")
            }
        } else {
            print("File not found in bundle")
        }
    }
    private func playEngineSound(for soundName: String) {
        guard let url = Bundle.main.url(forResource: soundName, withExtension: "mp3") else {
            print("Sound file not found")
            return
        }
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url)
            audioPlayer?.play()
        } catch {
            print("Failed to play sound: \(error.localizedDescription)")
        }
    }
}
