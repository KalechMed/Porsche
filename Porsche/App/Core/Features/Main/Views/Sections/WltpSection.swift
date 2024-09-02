//
//  Wltp.swift
//  Porsche
//
//  Created by Mohamed  on 6/4/2024.
//

import SwiftUI

struct WltpSection: View {
    // MARK: - Variables
    @EnvironmentObject var carViewModel: CarViewModel
    var selectedCar: Car? {
        carViewModel.selectedCar
    }
    // MARK: - View
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack {
                Text("WLTP")
                    .font(Poppins.medium.font(size: 18))
                    .foregroundStyle(Color("lightG"))
                Spacer()
            }
            VStack(spacing: 16) {
                WltpInfoRow(
                    iconName: "gasIcon",
                    valueText: selectedCar?.consumption ?? "no car",
                    unitText: "1/100km"
                )
                WltpInfoRow(
                    iconName: "rangeIcon",
                    valueText: "\(selectedCar?.range ?? 0)",
                    unitText: "km"
                )
                WltpInfoRow(
                    iconName: "co2Icon",
                    valueText: selectedCar?.co2 ?? "no car",
                    unitText: "g/km"
                )
            }
        }
        .padding()
        .background(Color("backgroundColor"))
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .padding(.leading, 20)
    }
}
