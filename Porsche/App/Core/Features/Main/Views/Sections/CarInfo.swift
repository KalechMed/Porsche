//
//  CarInfo.swift
//  Porsche
//
//  Created by Mohamed  on 6/4/2024.
//

import SwiftUI

struct CarInfo: View {
    // MARK: - Variables
    @EnvironmentObject var carViewModel: CarViewModel
    var selectedCar: Car? {
        carViewModel.selectedCar
    }
    // MARK: - View
    var body: some View {
        HStack(spacing: 20) {
            CarInfoItem(
                imageName: "timeIcon",
                value: selectedCar?.launchTime ?? "No selected car",
                description: "0 - 60 MPH"
            )
            Spacer()
            CarInfoItem(
                imageName: "horsePowerIcon",
                value: selectedCar?.horsePower ?? "No selected car",
                description: "HORSEPOWER"
            )
            Spacer()
            CarInfoItem(
                imageName: "mphIcon",
                value: selectedCar?.topSpeed ?? "No selected car",
                description: "TOP SPEED"
            )
        }
        .padding(.vertical, 20)
        .padding(.horizontal, 20)
        .background(Color("backgroundColor"))
        .clipShape(.rect(cornerRadius: 16))
        .padding(.horizontal, 20)
    }
}
