//
//  Color+Extensions.swift
//  iEmojiPainter
//
//  Created by Danielle Kefford on 12/30/21.
//

import SwiftUI

extension Color {
    var toEmoji: String {
        switch self {
        case .red:
            return "🟥"
        case .orange:
            return "🟧"
        case .brown:
            return "🟫"
        case .yellow:
            return "🟨"
        case .green:
            return "🟩"
        case .blue:
            return "🟦"
        case .purple:
            return "🟪"
        case .black:
            return "⬛️"
        default:
            return "⬜️"
        }
    }
}
