//
//  ContentView.swift
//  iEmojiPainter
//
//  Created by Danielle Kefford on 12/23/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(colors: [.indigo, .mint], startPoint: .top, endPoint: .bottom)

            VStack {
                ForEach(0..<13) { row in
                    HStack() {
                        ForEach(0..<10) { column in
                            Button("") {
                            }
                            .frame(width: 18, height: 18)
                            .background(.blue)
                            .padding(1)
                        }
                    }
                }
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
