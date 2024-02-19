//
//  JobDetailHeaderView.swift
//  JobSpot_SwiftUI
//
//  Created by Enigma Kod on 12/02/2024.
//

import SwiftUI

struct JobDetailHeaderView: View {
    @EnvironmentObject var appNavigator: AppNavigationState

    var body: some View {
        ZStack {
            VStack {
                TextView(text: "UI/UX Designer", size: 16, weight: .bold)

                Spacer().frame(height: 10)

                HStack {
                    ForEach(["Goggle", "\u{2022}", "California", "\u{2022} ", "1 day ago"], id: \.self) { text in
                        TextView(text: text, size: 14, weight: .regular)
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
                .clipShape(Circle())
                .onTapGesture { appNavigator.push(.company(.companyDetails)) },
            alignment: .top
        )
    }
}
