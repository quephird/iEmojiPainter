//
//  ContentView.swift
//  iEmojiPainter
//
//  Created by Danielle Kefford on 12/23/21.
//

import SwiftUI

struct ContentView: View {
    private var defaultColor: Color = .white

    var body: some View {
        ZStack {
            LinearGradient(colors: [.indigo, .mint], startPoint: .top, endPoint: .bottom)

            GridStack(rows: 13, columns: 10) { column, row in
                Pixel()
            }
        }
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
