//
//  WltpInfoRow.swift
//  Porsche
//
//  Created by Mohamed  on 2/9/2024.
//

import SwiftUI

struct WltpInfoRow: View {
    // MARK: - Variables
    var iconName: String
    var valueText: String
    var unitText: String
    var body: some View {
        HStack {
            // MARK: - View
            Image(iconName)
                .resizable()
                .frame(width: 20, height: 20)
            VStack(alignment: .leading) {
                Text(valueText)
                    .font(Poppins.medium.font(size: 12))
                    .foregroundStyle(Color("lightG"))
                Text(unitText)
                    .font(Poppins.medium.font(size: 8))
                    .foregroundStyle(Color("descriptionColor"))
            }
            Spacer()
        }
    }
}
