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
        VStack(alignment: .leading, spacing: 60) {
            HStack {
                Text("WLTP")
                    .font(Poppins.medium.font(size: 18))
                    .foregroundStyle(Color("lightG"))
                Spacer()
                Image("arrowIcon")
                    .resizable()
                    .frame(width: 8, height: 12)
            }
            VStack(spacing: 20) {
                HStack {
                    Image("gasIcon")
                        .resizable()
                        .frame(width: 20, height: 20)
                    VStack(alignment: .leading) {
                        Text(selectedCar?.consumption ?? "no car selected")
                            .font(Poppins.medium.font(size: 12))
                            .foregroundStyle(Color("lightG"))
                        Text("1/100km")
                            .font(Poppins.medium.font(size: 8))
                            .foregroundStyle(Color("descriptionColor"))
                    }
                }
                HStack {
                    Image("co2Icon")
                        .resizable()
                        .frame(width: 20, height: 20)
                    VStack(alignment: .leading) {
                        Text(selectedCar?.co2 ?? "no car selected")
                            .font(Poppins.medium.font(size: 12))
                            .foregroundStyle(Color("lightG"))
                        Text("g/km")
                            .font(Poppins.medium.font(size: 8))
                            .foregroundStyle(Color("descriptionColor"))
                    }
                }
            }
        }
        .padding()
        .background(Color("backgroundColor"))
        .clipShape(.rect(cornerRadius: 16))
        .padding(.leading, 20)
    }
}
