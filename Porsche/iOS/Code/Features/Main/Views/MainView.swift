//
//  ContentView.swift
//  Porsche
//
//  Created by Mohamed  on 16/3/2024.
//

import SwiftUI

struct MainView: View {
    // MARK: - Variables
    @StateObject var carViewModel: CarViewModel
    @State var color: UIColor = .red
    private var swiftUIColor: Color {
            get { Color(uiColor: color) }
            set { color = UIColor(newValue) }
        }
    // MARK: - View
    var body: some View {
        VStack{
            ZStack {
                HStack {
                    Image("Logo")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .padding(.leading, 20)
                    Text("porsche")
                        .font(Porsche.regular.font(size: 18))
                        .padding(.leading, 40)
                    Spacer()
                }
                .padding(.bottom, 200)
                ColorPicker("", selection: Binding(
                    get: { swiftUIColor },
                    set: { newColor in color = UIColor(newColor) }
                ))
                .padding(.trailing, 30)
                .padding(.bottom, 50)
                SceneKitView(color: $color)
                    .frame(height: 200)
                
            }
                    CarInfo()
                    HStack {
                        WltpSection()
                        TorqueSection()
                    }
                    CarsSection(carViewModel: carViewModel, selectedCar: $carViewModel.selectedCar)
            }
            .environmentObject(carViewModel)
        }
}
