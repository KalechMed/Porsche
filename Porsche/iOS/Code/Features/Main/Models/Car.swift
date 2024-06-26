//
//  carModel.swift
//  Porsche
//
//  Created by Mohamed  on 28/4/2024.
//

import Foundation

struct Car: Codable, Identifiable, Equatable {
    var id = UUID()
    let modelName: String
    let launchTime: Float
    let horsePower: Int
    let topSpeed: Int
    let co2: String
    let consumption: String
    let torque: [Torque]
    var name: String
    enum CodingKeys: String, CodingKey {
            case modelName, launchTime, horsePower, topSpeed, co2, consumption, torque, name
        }
    static func == (lhs: Car, rhs: Car) -> Bool {
            return lhs.id == rhs.id
        }
}

struct Torque: Codable {
    let rpm: Double
    let torqueValue: Double
}
