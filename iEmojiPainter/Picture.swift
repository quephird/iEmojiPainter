//
//  Picture.swift
//  iEmojiPainter
//
//  Created by Danielle Kefford on 12/28/21.
//

import SwiftUI

class Picture: ObservableObject {
    @Published var pixels: [Color]

    init(columns: Int, rows: Int, defaultColor: Color) {
        self.pixels = Array(repeating: defaultColor, count: rows*columns)
    }
}
