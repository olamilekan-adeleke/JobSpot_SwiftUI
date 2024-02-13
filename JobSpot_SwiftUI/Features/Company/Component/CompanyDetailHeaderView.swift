//
//  CompanyDetailHeaderView.swift
//  JobSpot_SwiftUI
//
//  Created by Enigma Kod on 13/02/2024.
//

import SwiftUI

struct CompanyDetailHeaderView: View {
    var body: some View {
        ZStack {
            VStack {
                TextView(text: "Google Inc", size: 16, weight: .bold)

                Spacer().frame(height: 10)

                HStack {
                    ForEach(["Technology", "\u{2022}", "California", "\u{2022}", "1998"], id: \.self) { text in
                        TextView(text: text, size: 16, weight: .regular)
                    }
                }
            }
            .padding(.vertical, 25)
            .frame(maxWidth: .infinity, maxHeight: 115)
            .background(Color(uiColor: UIColor(fromHex: "F3F2F2")!))
            .padding(.top, 60)
        }
        .overlay(
            Image("google_icon")
                .resizable()
                .frame(width: 55, height: 55)
                .padding(12)
                .background(Color.gray.opacity(0.2))
                .clipShape(Circle()),
            alignment: .top
        )
    }
}
