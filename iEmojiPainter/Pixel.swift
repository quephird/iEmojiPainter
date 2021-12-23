//
//  PixelButton.swift
//  iEmojiPainter
//
//  Created by Danielle Kefford on 12/23/21.
//

import SwiftUI

struct Pixel: View {
    let defaultColor: Color = .white
    @State private var currentColor: Color = .blue
    @State var isPainted: Bool = false

    var body: some View {
        Rectangle()
        .background()
        .foregroundColor(isPainted ? self.currentColor : self.defaultColor)
        .frame(width: 20, height: 20)
        .onTapGesture {
            self.isPainted = !self.isPainted
        }
    }
}
