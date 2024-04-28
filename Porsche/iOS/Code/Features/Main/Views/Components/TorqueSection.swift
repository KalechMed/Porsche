//
//  TorqueSection.swift
//  Porsche
//
//  Created by Mohamed  on 27/4/2024.
//

import SwiftUI
import Charts

struct TorqueSection: View {
    @Binding var selectedCar: Car
       var body: some View {
           VStack(alignment: .leading) {
               HStack(alignment: .center) {
                   Text("TORQUE (Nm)")
                       .font(Poppins.medium.font(size: 18))
                       .foregroundStyle(Color("lightG"))
                   Spacer()
                   Image("arrowIcon")
                       .resizable()
                       .frame(width: 8, height: 11)
               }
               .padding(.bottom, 20)
//               Chart {
//                   ForEach(selectedCar.torque, id: \.id) { item in
//                       LineMark(
//                        x: .value("Weekday", item.rpm),
//                           y: .value("Count", item.torqueValue)
//                       )
//                   }
//               }
           }
           .padding()
           .padding(.horizontal, 10)
           .frame(width: 210, height: 200)
           .background(Color("backgroundColor"))
           .clipShape(.rect(cornerRadius: 16))
       }
}
