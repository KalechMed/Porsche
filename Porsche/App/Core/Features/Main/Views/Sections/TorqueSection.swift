//
//  TorqueSection.swift
//  Porsche
//
//  Created by Mohamed  on 27/4/2024.
//

import SwiftUI
import Charts

struct TorqueSection: View {
    // MARK: - Variables
    @EnvironmentObject var carViewModel: CarViewModel
    var selectedCar: Car? {
        carViewModel.selectedCar
    }
    // MARK: - View
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .center) {
                Text("TORQUE (Nm)")
                    .font(Poppins.medium.font(size: 18))
                    .foregroundStyle(Color("lightG"))
                Spacer()
            }
            .padding(.bottom, 20)
            if let torque = selectedCar?.torque {
                Chart {
                    ForEach(torque, id: \.id) { item in
                        LineMark(
                            x: .value("Weekday", item.rpm),
                            y: .value("Count", item.torqueValue)
                        )
                    }
                }
            } else {
                Text("No torque data available")
                    .foregroundColor(.red)
            }
        }
        .padding()
        .frame(width: 210, height: 200)
        .background(Color("backgroundColor"))
        .clipShape(.rect(cornerRadius: 16))
        .padding(.trailing, 20)
    }
}
