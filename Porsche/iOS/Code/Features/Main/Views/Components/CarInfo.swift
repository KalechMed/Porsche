//
//  CarInfo.swift
//  Porsche
//
//  Created by Mohamed  on 6/4/2024.
//

import SwiftUI

struct CarInfo: View {
    @Binding var selectedCar: Car
    var body: some View {
        HStack(spacing: 40) {
            VStack(spacing: 20) {
                Image("timeIcon")
                    .resizable()
                    .frame(width: 20, height: 20)
                VStack(spacing: 4) {
                    Text(String(selectedCar.launchTime))
                        .font(Poppins.medium.font(size: 18))
                        .foregroundStyle(Color("lightG"))
                    Text("0 - 60 MPH")
                        .font(Poppins.medium.font(size: 12))
                        .foregroundStyle(Color("descriptionColor"))
                }
            }
            VStack(spacing: 20) {
                Image("horsePowerIcon")
                    .resizable()
                    .frame(width: 13, height: 20)
                VStack(spacing: 4) {
                    Text("690 hp")
                        .font(Poppins.medium.font(size: 18))
                        .foregroundStyle(Color("lightG"))
                    Text("HORSEPOWER")
                        .font(Poppins.medium.font(size: 12))
                        .foregroundStyle(Color("descriptionColor"))
                }
            }
            VStack(spacing: 20) {
                Image("mphIcon")
                    .resizable()
                    .frame(width: 20, height: 20)
                VStack(spacing: 4) {
                    Text("190 mph")
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
    }
}
