//
//  PixelButton.swift
//  iEmojiPainter
//
//  Created by Danielle Kefford on 12/23/21.
//

import SwiftUI

struct PixelButton: View {
    let defaultColor: Color

    var body: some View {
        Button("") {
        }
        .frame(width: 18, height: 18)
        .background(defaultColor)
        .padding(1)
    }
}
