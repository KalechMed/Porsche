//
//  CarsSection.swift
//  Porsche
//
//  Created by Mohamed  on 27/4/2024.
//

import SwiftUI

struct CarsSection: View {
    // MARK: - Variables
    @ObservedObject var carViewModel: CarViewModel
    @Binding var selectedCar: Car?
    // MARK: - View
    var body: some View {
        ScrollView(.horizontal) {
            HStack(spacing: 18) {
                ForEach(carViewModel.cars) { car in
                    CarItemView(car: car, isSelected: selectedCar == car) {
                        selectedCar = car
                        carViewModel.selectedCar = car
                    }
                }
            }
            .padding()
        }
        .background(Color("backgroundColor"))
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .padding(.horizontal, 20)
    }
}
