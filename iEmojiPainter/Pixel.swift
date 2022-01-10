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
    @Binding var currentColor: Color
    @Binding var selectedColor: Color
    @State var isPainted: Bool = false

    var body: some View {
        Rectangle()
        .background()
        .foregroundColor(isPainted ? self.currentColor : self.defaultColor)
        .frame(width: width, height: height)
        .onTapGesture {
            self.isPainted.toggle()
            self.currentColor = self.isPainted ? self.selectedColor : self.defaultColor
        }
    }
}
