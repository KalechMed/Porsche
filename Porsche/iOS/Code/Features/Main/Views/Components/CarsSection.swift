//
//  CarsSection.swift
//  Porsche
//
//  Created by Mohamed  on 27/4/2024.
//

import SwiftUI

struct CarsSection: View {
    @ObservedObject var carViewModel = CarViewModel()
    @Binding public var selectedCar: Car
    let defaultSelectedCar: Car
        init(selectedCar: Binding<Car>, carViewModel: CarViewModel) {
            self._selectedCar = selectedCar
            self.carViewModel = carViewModel
            if let carrera4S = carViewModel.cars.first(where: { $0.modelName == "911Carrera4S" }) {
                self.defaultSelectedCar = carrera4S
                self._selectedCar = .init(get: { carrera4S }, set: { _ in })
            } else {
                self.defaultSelectedCar = carViewModel.cars.first!
            }
        }
    var body: some View {
            ZStack {
                ScrollView(.horizontal) {
                    HStack(spacing: 18) {
                        ForEach(carViewModel.cars) { car in
                                VStack(alignment: .center) {
                                    Text(car.name)
                                        .font(Poppins.medium.font(size: 14))
                                        .foregroundColor(Color.white)
                                    Image(car.modelName)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 80, height: 80)
                                }
                                .onTapGesture {
                                        selectedCar = car
                                        print("selectedCar: \(selectedCar)")
                                }
                                .padding(6)
                                .padding(.horizontal, 4)
                                .background(
                                    RoundedRectangle(cornerRadius: 20)
                                        .foregroundStyle(selectedCar == car ? Color("selectedItemColor") :
                                                        Color("itemColor"))
                                )
                                .scrollTransition(topLeading: .interactive,
                                                  bottomTrailing: .interactive,
                                                  axis: .horizontal) { effect, phase in
                                    effect
                                        .scaleEffect(1 - abs(phase.value))
                                        .opacity(1 - abs(phase.value))
                                }
                            }
                    }
                }
            }
            .padding()
            .padding(.horizontal, 10)
            .background(Color("backgroundColor"))
            .clipShape(RoundedRectangle(cornerRadius: 16))
            .onAppear {
                        selectedCar = defaultSelectedCar
                    }
        }
   }
