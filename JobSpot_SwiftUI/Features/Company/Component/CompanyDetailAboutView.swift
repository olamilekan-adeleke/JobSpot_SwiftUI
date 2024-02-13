//
//  CompanyDetailAboutView.swift
//  JobSpot_SwiftUI
//
//  Created by Enigma Kod on 13/02/2024.
//

import SwiftUI

struct CompanyDetailAboutView: View {
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                optionView(title: "About Company", subtitle: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. \n\nAt vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas .")

                optionView(title: "Website", subtitle: "https://www.google.com")
                optionView(title: "Industry", subtitle: "Internet product")
                optionView(title: "Employee size", subtitle: "132,121 Employees")
                optionView(title: "Head office", subtitle: "Mountain View, California, Amerika Serikat")
                optionView(title: "Type", subtitle: "Multinational company")
                optionView(title: "Since", subtitle: "1998")
                optionView(title: "Specialization", subtitle: "Search technology, Web computing, Software and Online advertising")
            }

            CompanyImageView()
        }
    }

    func optionView(title: String, subtitle: String) -> some View {
        VStack(alignment: .leading) {
            TextView(text: title, size: 14, weight: .semibold)
            Spacer().frame(height: 3)
            TextView(text: subtitle, size: 12).opacity(0.7)
            Spacer().frame(height: 20)
        }
    }
}

private struct CompanyImageView: View {
    var body: some View {
        VStack(alignment: .leading) {
            TextView(text: "Company Gallery", size: 14, weight: .semibold)
            Spacer().frame(height: 10)

            HStack {
                Image("company_image_one")
                    .resizable()
                    .frame(width: (UIScreen.main.bounds.width / 2) - 25, height: 115)
                    .clipShape(RoundedRectangle(cornerRadius: 6))

                Spacer()

                Image("company_image_two")
                    .resizable()
                    .frame(width: (UIScreen.main.bounds.width / 2) - 25, height: 115)
                    .overlay(
                        TextView(text: "+5 pictures", color: .white)
                            .frame(width: (UIScreen.main.bounds.width / 2) - 25, height: 115)
                            .background(Color(uiColor: UIColor(fromHex: "0C3648")!).opacity(0.45))
                    )
                    .clipShape(RoundedRectangle(cornerRadius: 6))
            }
        }
    }
}
