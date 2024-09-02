//
//  CarInfoItem.swift
//  Porsche
//
//  Created by Mohamed  on 3/9/2024.
//

import SwiftUI

struct CarInfoItem: View {
    // MARK: - Variables
    var imageName: String
    var value: String
    var description: String
    // MARK: - View
    var body: some View {
        VStack(spacing: 4) {
            Image(imageName)
                .resizable()
                .frame(width: 20, height: 20)
                .padding(.bottom, 16)
            Text(value)
                .font(Poppins.medium.font(size: 18))
                .foregroundStyle(Color("lightG"))
            Text(description)
                .font(Poppins.medium.font(size: 12))
                .foregroundStyle(Color("descriptionColor"))
        }
    }
}
