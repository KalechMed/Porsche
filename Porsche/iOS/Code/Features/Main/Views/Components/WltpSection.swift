//
//  Wltp.swift
//  Porsche
//
//  Created by Mohamed  on 6/4/2024.
//

import SwiftUI

struct WltpSection: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 60) {
            HStack {
                Text("WLTP")
                      .font(Poppins.medium.font(size: 18))
                      .foregroundStyle(Color("lightG"))
                      .padding(.trailing, 26)
                Image("arrowIcon")
                    .resizable()
                    .frame(width: 8, height: 11)
            }
            VStack(spacing: 20) {
                HStack {
                    Image("co2Icon")
                        .resizable()
                        .frame(width: 20, height: 20)
                    VStack(alignment: .leading) {
                        Text("10,8 - 10,3")
                            .font(Poppins.medium.font(size: 12))
                            .foregroundStyle(Color("lightG"))
                        Text("1/100km")
                            .font(Poppins.medium.font(size: 8))
                            .foregroundStyle(Color("descriptionColor"))
                    }
                }
                HStack {
                    Image("gasIcon")
                        .resizable()
                        .frame(width: 20, height: 20)
                    VStack(alignment: .leading) {
                        Text("245 - 233")
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
        .padding(.horizontal, 10)
        .background(Color("backgroundColor"))
        .clipShape(.rect(cornerRadius: 16))
    }
}
