//
//  FontManager.swift
//  Porsche
//
//  Created by Mohamed  on 16/3/2024.
//

import SwiftUI

enum Poppins {
    case bold
    case medium
    func font(size: CGFloat) -> Font {
        switch self {
        case .bold:
            return .custom("Poppins-Bold", size: size)
        case .medium:
            return .custom("Poppins-Medium", size: size)
        }
    }
}
enum Porsche {
    case regular
    func font(size: CGFloat) -> Font {
        switch self {
        case .regular:
            return .custom("911PorschaTitle", size: size)
        }
    }
}
