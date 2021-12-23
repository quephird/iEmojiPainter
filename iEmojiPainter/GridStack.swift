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
    let cellContent: (Int, Int) -> Content

    var body: some View {
        VStack {
            ForEach(0..<13) { row in
                HStack() {
                    ForEach(0..<10) { column in
                        cellContent(column, row)
                    }
                }
            }
        }
    }
}
