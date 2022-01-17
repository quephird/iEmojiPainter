//
//  GridStack.swift
//  iEmojiPainter
//
//  Created by Danielle Kefford on 12/23/21.
//

import SwiftUI

struct GridStack<Content: View>: View {
    let rows: Int
    let columns: Int
    let spacing: CGFloat
    let cellContent: (Int, Int) -> Content

    var body: some View {
        VStack(spacing: spacing) {
            ForEach(0..<rows) { row in
                HStack(spacing: spacing) {
                    ForEach(0..<columns) { column in
                        cellContent(column, row)
                    }
                }
            }
        }
    }
}
