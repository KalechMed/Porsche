//
//  UIColor.swift
//  Porsche
//
//  Created by Mohamed  on 19/6/2024.
//

import SwiftUI

extension Color {
    init(uiColor: UIColor) {
        self = Color(uiColor)
    }
    var uiColor: UIColor {
        let components = self.cgColor?.components
        let redComponent = (components?[0] ?? 1.0) * 255.0
        let greenComponent = (components?[1] ?? 1.0) * 255.0
        let blueComponent = (components?[2] ?? 1.0) * 255.0
        let alphaComponent = (components?[3] ?? 1.0)
        return UIColor(red: redComponent/255.0, green: greenComponent/255.0,
                       blue: blueComponent/255.0, alpha: alphaComponent)
    }
}
