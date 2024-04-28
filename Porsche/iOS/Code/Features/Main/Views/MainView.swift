//
//  ContentView.swift
//  Porsche
//
//  Created by Mohamed  on 16/3/2024.
//

import SwiftUI

struct MainView: View {
    @GestureState private var dragState = CGSize.zero
    @State private var circlePosition: CGPoint = .zero
    @State private var seekerPosition: CGFloat = 0.5
    @ObservedObject var carViewModel = CarViewModel()
    @State var selectedCar: Car
    var body: some View {
        GeometryReader { proxy in
            let _: CGFloat = proxy.size.height
                VStack {
                    HStack {
                        Image("Logo")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .padding(.leading, 10)
                        Spacer()
                        Text("porsche")
                            .font(Porsche.regular.font(size: 18))
                        Spacer()
                    }
                    SceneKitView(circlePosition: $circlePosition)
                        .frame(height: 200)
                    CustomSlider(circlePosition: $circlePosition)
                    CarInfo(selectedCar: $selectedCar)
                    HStack {
                        WltpSection()
                        TorqueSection(selectedCar: $selectedCar)
                    }
                    CarsSection(selectedCar: $selectedCar, carViewModel: carViewModel)
                        .padding(.horizontal, 20)
                }
                .ignoresSafeArea(.all)
                .padding(.vertical, 1)
            }
        }
}
