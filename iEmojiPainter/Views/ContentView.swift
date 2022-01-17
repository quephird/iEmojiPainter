//
//  ContentView.swift
//  iEmojiPainter
//
//  Created by Danielle Kefford on 12/23/21.
//

import SwiftUI

//Keeps track of all values used to set up the views. They can all be changed in one place, rather than having to dig through the code to find them.
struct ViewConstants {
    static let individualColorHeight: CGFloat = 25
    static let individualColorWidth: CGFloat = 25

    static let copyButtonHeight: CGFloat = 25
    static let copyButtonWidth: CGFloat = 200

    static let numberOfRows: Int = 13
    static let numberOfColumns: Int = 10

    static let gridSpacing: CGFloat = 5

    static let gradientColor1: Color = .indigo
    static let gradientColor2: Color = .mint

    static let defaultColor: Color = .white

    static let copyText = "Copy to clipboard"
    static let clearGridText = "Clear grid"
}

//The main container view of the app
struct ContentView: View {
    @State private var selectedColor: Color = .white
    @StateObject var picture = Picture(columns: ViewConstants.numberOfColumns,
                                       rows: ViewConstants.numberOfRows,
                                       defaultColor: ViewConstants.defaultColor)

    var body: some View {
        ZStack {
            //the color background
            LinearGradient(colors: [ViewConstants.gradientColor1,
                                    ViewConstants.gradientColor2],
                           startPoint: .top,
                           endPoint: .bottom)

            //the main grid of the emoji painter
            VStack {
                GridStack(rows: ViewConstants.numberOfRows,
                          columns: ViewConstants.numberOfColumns,
                          spacing: ViewConstants.gridSpacing) { column, row in

                    Pixel(width: ViewConstants.individualColorWidth,
                          height: ViewConstants.individualColorHeight,
                          currentColor: $picture.pixels[row*ViewConstants.numberOfColumns+column],
                          selectedColor: $selectedColor)
                }

                //the color selector
                HStack {
                    ForEach(AvailableColors.allCases, id: \.self) { availableColor in
                        Button(" ") {
                            self.selectedColor = availableColor.color
                        }
                        .frame(width: ViewConstants.individualColorWidth,
                               height: ViewConstants.individualColorHeight)
                        .background(availableColor.color)
                    }
                }

                VStack {
                    //copy to clipboard button
                    Button(ViewConstants.copyText) {
                        var tweet = ""
                        for row in 0..<ViewConstants.numberOfRows {
                            for column in 0..<ViewConstants.numberOfColumns {
                                tweet.append(picture.pixels[row*ViewConstants.numberOfColumns+column].toEmoji)
                            }
                            tweet.append("\n")
                        }
                        UIPasteboard.general.string = tweet
                    }
                    .frame(width: ViewConstants.copyButtonWidth,
                           height: ViewConstants.copyButtonHeight)
                    .background(.white)

                    Button(ViewConstants.clearGridText) {
                        //TODO: Implement this
                    }
                    .frame(width: ViewConstants.copyButtonWidth,
                           height: ViewConstants.copyButtonHeight)
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
