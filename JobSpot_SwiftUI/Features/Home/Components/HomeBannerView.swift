//
//  HomeBannerView.swift
//  JobSpot_SwiftUI
//
//  Created by Enigma Kod on 11/02/2024.
//

import SwiftUI

struct HomeBannerView: View {
    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                TextView(text: "50% off \ntake any courses", size: 18, weight: .semibold)
                    .foregroundColor(Color.white)
                Spacer().frame(height: 10)
                BaseButton(
                    config: .init(title: "Join Now", type: .custom(Color(uiColor: UIColor(fromHex: "FF9228")!)))
                ) {}
                    .frame(width: 90, height: 26)
            }
            .padding(.horizontal, 17)
            .padding(.vertical, 24)
            .frame(maxWidth: .infinity, alignment: .leading)
        }
        .frame(maxWidth: .infinity)
        .background(Color.AppColor.primaryColor)
        .clipShape(RoundedRectangle(cornerRadius: 6))
        .overlay(
            Image("banner_lady")
                .resizable()
                .frame(width: 140, height: 180),
            alignment: .bottomTrailing
        )
    }
}
