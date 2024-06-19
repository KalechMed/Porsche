//
//  Torque.swift
//  Porsche
//
//  Created by Mohamed  on 5/5/2024.
//

import Foundation

struct Torque: Codable {
    let id: UUID?
    let rpm: Int
    let torqueValue: Int
    init(rpm: Int, torqueValue: Int) {
        self.id = UUID()
        self.rpm = rpm
        self.torqueValue = torqueValue
    }
}
