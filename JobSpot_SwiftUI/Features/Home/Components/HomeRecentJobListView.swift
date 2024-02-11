//
//  HomeRecentJobListView.swift
//  JobSpot_SwiftUI
//
//  Created by Enigma Kod on 11/02/2024.
//

import SwiftUI

struct HomeRecentJobListView: View {
    var body: some View {
        VStack(alignment: .leading) {
            TextView(text: "Find Jobs", size: 16, weight: .bold)

            Spacer().frame(height: 10)

            ForEach(Range(0 ... 4), id: \.self) { _ in
                RecentJobItemView()
            }
        }
        .background(Color.AppColor.appBackgroundColor)
    }
}

private struct RecentJobItemView: View {
    var body: some View {
        VStack {
            header()

            Spacer().frame(height: 10)
            TextView(text: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et")
                .lineLimit(2)
                .multilineTextAlignment(.leading)
                .opacity(0.7)

            Spacer().frame(height: 12)
            HStack {
                optionView(title: "Design")
                Spacer().frame(width: 10, height: 0)
                optionView(title: "Full Time")
                Spacer().frame(width: 10, height: 0)
                optionView(title: "Senior Role")
            }

            Spacer().frame(height: 10)
            HStack {
                TextView(text: "25 minute ago", size: 10, weight: .light).opacity(0.5)
                Spacer().frame(height: 0)

                TextView(text: "$15K/Mo", size: 13, weight: .bold).opacity(0.7)
            }
        }
        .padding(20)
        .background(Color.white)
    }

    func header() -> some View {
        HStack {
            Image("google_icon")
                .resizable()
                .frame(width: 25, height: 25)
                .padding(10)
                .background(Color.gray.opacity(0.2))
                .clipShape(Circle())

            Spacer().frame(width: 10, height: 0)

            VStack(alignment: .leading) {
                TextView(text: "Product Designer", size: 14, weight: .bold)
                TextView(text: "Google inc California, USA", size: 12, weight: .light)
                    .opacity(0.7)
            }

            Spacer()

            Image(systemName: "bookmark")
        }
    }

    func optionView(title: String) -> some View {
        TextView(text: title, size: 10, weight: .light)
            .frame(maxWidth: .infinity)
            .padding(.horizontal, 20)
            .padding(.vertical, 6)

            .background(Color(uiColor: UIColor(fromHex: "CBC9D4")!).opacity(0.3))
            .clipShape(RoundedRectangle(cornerRadius: 8))
    }
}
