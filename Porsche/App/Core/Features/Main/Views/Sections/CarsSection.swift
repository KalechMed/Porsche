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
    // MARK: - View
    var body: some View {
        ScrollView(.horizontal) {
            HStack(spacing: 18) {
                ForEach(carViewModel.cars) { car in
                    CarItemView(car: car, isSelected: carViewModel.selectedCar == car) {
                        carViewModel.selectedCar = car
                    }
                }
                .scrollTransition(topLeading: .interactive,
                                  bottomTrailing: .interactive,
                                  axis: .horizontal) { effect, phase in
                    effect
                        .scaleEffect(1 - abs(phase.value))
                        .opacity(1 - abs(phase.value))
                }
            }
            .padding()
        }
        .background(Color("backgroundColor"))
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .padding(.horizontal, 20)
    }
}
