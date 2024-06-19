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
        HStack {
            VStack(spacing: 20) {
                Image("timeIcon")
                    .resizable()
                    .frame(width: 20, height: 20)
                VStack(spacing: 4) {
                    Text(selectedCar?.launchTime ?? " no selected car ")
                        .font(Poppins.medium.font(size: 18))
                        .foregroundStyle(Color("lightG"))
                    Text("0 - 60 MPH")
                        .font(Poppins.medium.font(size: 12))
                        .foregroundStyle(Color("descriptionColor"))
                }
            }
            Spacer()
            VStack(spacing: 20) {
                Image("horsePowerIcon")
                    .resizable()
                    .frame(width: 14, height: 20)
                VStack(spacing: 4) {
                    Text(selectedCar?.horsePower ?? " no selected car ")
                        .font(Poppins.medium.font(size: 18))
                        .foregroundStyle(Color("lightG"))
                    Text("HORSEPOWER")
                        .font(Poppins.medium.font(size: 12))
                        .foregroundStyle(Color("descriptionColor"))
                }
            }
            Spacer()
            VStack(spacing: 20) {
                Image("mphIcon")
                    .resizable()
                    .frame(width: 20, height: 20)
                VStack(spacing: 4) {
                    Text(selectedCar?.topSpeed ?? " no selected car ")
                        .font(Poppins.medium.font(size: 18))
                        .foregroundStyle(Color("lightG"))
                    Text("TOP SPEED")
                        .font(Poppins.medium.font(size: 12))
                        .foregroundStyle(Color("descriptionColor"))
                }
            }
        }
        .padding()
        .padding(.horizontal, 10)
        .background(Color("backgroundColor"))
        .clipShape(.rect(cornerRadius: 16))
        .padding(.horizontal, 20)
    }
}
