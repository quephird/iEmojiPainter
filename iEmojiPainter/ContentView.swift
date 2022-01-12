//
//  ContentView.swift
//  iEmojiPainter
//
//  Created by Danielle Kefford on 12/23/21.
//

import SwiftUI

struct ContentView: View {
    private var defaultColor: Color = .white
    @State private var selectedColor: Color = .white
    private let colors: [Color] = [
        .red,
        .orange,
        .brown,
        .yellow,
        .green,
        .blue,
        .purple,
        .white,
        .black
    ]

    @StateObject var picture = Picture(columns: 10, rows: 13, defaultColor: .white)

    var body: some View {
        ZStack {
            LinearGradient(colors: [.indigo, .mint], startPoint: .top, endPoint: .bottom)

            VStack {
                GridStack(rows: 13, columns: 10, spacing: 5) { column, row in
                    Pixel(width: 25, height: 25, currentColor: $picture.pixels[row*10+column], selectedColor: $selectedColor)
                }

                HStack {
                    ForEach(colors, id: \.self) { color in
                        Button(" ") {
                            self.selectedColor = color
                        }
                        .frame(width: 25, height: 25)
                        .background(color)
                    }
                }

                HStack {
                    Button("Copy to clipboard") {
                        var tweet = ""
                        for row in 0..<13 {
                            for column in 0..<10 {
                                tweet.append(picture.pixels[row*10+column].toEmoji())
                            }
                            tweet.append("\n")
                        }
                        UIPasteboard.general.string = tweet
                    }
                    .frame(height: 25)
                    .background(.white)

                    Button("Clear canvas") {
                        picture.clearPixels()
                    }
                    .frame(height: 25)
                    .background(.white)
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
