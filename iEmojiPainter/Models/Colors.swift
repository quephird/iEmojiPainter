//
//  Colors.swift
//  iEmojiPainter
//
//  Created by Shantini Vyas on 1/11/22.
//

import Foundation
import SwiftUI

//a struct to handle the allowed colors and any behaviors we might want associated with each color
enum AvailableColors: String, CaseIterable {
    case red
    case orange
    case brown
    case yellow
    case green
    case blue
    case purple
    case white
    case black

    static func colorForName(_ colorName: AvailableColors) -> Color {
        return Color.init(colorName.rawValue)
    }

    var color: Color {
        switch self {
        case .red:
            return .red
        case .orange:
            return .orange
        case .brown:
            return .brown
        case .yellow:
            return .yellow
        case .green:
            return .green
        case .blue:
            return .blue
        case .purple:
            return .purple
        case .white:
            return .white
        case .black:
            return .black
        }
    }
}
