//
//  CustomSeeker.swift
//  Porsche
//
//  Created by Mohamed  on 17/3/2024.
//

import SwiftUI

struct CustomSlider: View {
    @Binding var circlePosition: CGPoint
    var body: some View {
        GeometryReader { geometry in
                    ZStack {
                        Path { path in
                            path.move(to: CGPoint(x: 20, y: geometry.size.height / 2))
                            path.addLine(to: CGPoint(x: geometry.size.width - 20, y: geometry.size.height / 2))
                        }
                        .stroke(Color("sliderColor"), lineWidth: 1)
                        Circle()
                            .fill(Color("sliderColor"))
                            .frame(width: 10, height: 10)
                            .position(self.circlePosition)
                            .gesture(
                                DragGesture()
                                    .onChanged { value in
                                        let newX = min(max(value.location.x, 20), geometry.size.width - 20)
                                        self.circlePosition = CGPoint(x: newX, y: geometry.size.height / 2)
                                    }
                            )
                            .onAppear {
                                            self.circlePosition = CGPoint(x: geometry.size.width / 2,
                                                                          y: geometry.size.height / 2)
                                        }
                    }
        }
        .frame(height: 30)
    }
}
