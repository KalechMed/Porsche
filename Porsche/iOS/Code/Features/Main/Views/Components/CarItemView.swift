//
//  CarItemView.swift
//  Porsche
//
//  Created by Mohamed  on 6/5/2024.
//

import SwiftUI

struct CarItemView: View {
    // MARK: - Variables
    let car: Car
    let isSelected: Bool
    let onTap: () -> Void
    // MARK: - View
    var body: some View {
        Button(action: onTap) {
            VStack {
                Text(car.name)
                    .font(.subheadline)
                    .foregroundColor(.white)
                Image(car.modelName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 80, height: 80)
            }
            .padding(10)
        }
        .background(
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(isSelected ? Color("selectedItemColor") : Color("itemColor"))
        )
        .buttonStyle(PlainButtonStyle())
    }
}
