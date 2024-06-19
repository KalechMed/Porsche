//
//  toUIColor.swift
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
        let r = (components?[0] ?? 1.0) * 255.0
        let g = (components?[1] ?? 1.0) * 255.0
        let b = (components?[2] ?? 1.0) * 255.0
        let a = (components?[3] ?? 1.0)
        return UIColor(red: r/255.0, green: g/255.0, blue: b/255.0, alpha: a)
    }
}
