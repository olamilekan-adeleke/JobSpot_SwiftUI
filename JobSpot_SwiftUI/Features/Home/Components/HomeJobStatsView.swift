//
//  HomeJobStatsView.swift
//  JobSpot_SwiftUI
//
//  Created by Enigma Kod on 11/02/2024.
//

import SwiftUI

struct HomeJobStatsView: View {
    var body: some View {
        VStack(alignment: .leading) {
            TextView(text: "Find Jobs", size: 16, weight: .bold)

            Spacer().frame(height: 10)

            HStack {
                JobStatsOptions(title: "44.5K", description: "Remote Job", imagePath: "headhunting",
                                color: UIColor(fromHex: "AFECFE")!)

                Spacer().frame(width: 20, height: 0)

                VStack {
                    JobStatsOptions(title: "44.5K", description: "Remote Job", color: UIColor(fromHex: "BEAFFE")!)
                    Spacer().frame(height: 20)
                    JobStatsOptions(title: "44.5K", description: "Remote Job", color: UIColor(fromHex: "FFD6AD")!)
                }
            }
        }
    }
}

// MARK: - Options

private struct JobStatsOptions: View {
    let title: String
    let description: String
    let imagePath: String?
    let color: UIColor

    init(title: String, description: String, imagePath: String? = nil, color: UIColor) {
        self.title = title
        self.description = description
        self.imagePath = imagePath
        self.color = color
    }

    var body: some View {
        VStack {
            if let imagePath = imagePath {
                VStack {
                    Image(imagePath)
                        .frame(width: 34, height: 34)
                    Spacer().frame(height: 30)
                }
            } else {
                Spacer().frame(width: 0, height: 0)
            }

            TextView(text: title, size: 16, weight: .bold)
            Spacer().frame(height: 3)
            TextView(text: description, size: 14, weight: .light)
        }
        .padding()
        .frame(
            width: (UIScreen.main.bounds.width / 2) - 16 * 2,
            height: 75 * (imagePath == nil ? 1 : 2.3)
        )
        .background(Color(uiColor: color))
        .clipShape(RoundedRectangle(cornerRadius: 6))
    }
}
