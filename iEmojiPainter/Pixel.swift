//
//  PixelButton.swift
//  iEmojiPainter
//
//  Created by Danielle Kefford on 12/23/21.
//

import SwiftUI

struct Pixel: View {
    let width: CGFloat
    let height: CGFloat
    let defaultColor: Color = .white
    @State private var currentColor: Color = .blue
    @State var isPainted: Bool = false

    var body: some View {
        Rectangle()
        .background()
        .foregroundColor(isPainted ? self.currentColor : self.defaultColor)
        .frame(width: width, height: height)
        .onTapGesture {
            self.isPainted = !self.isPainted
        }
    }
}
