//
//  JobDetailInformationView.swift
//  JobSpot_SwiftUI
//
//  Created by Enigma Kod on 13/02/2024.
//

import SwiftUI

struct JobDetailInformationView: View {
    let facilitiesList = [
        "Medical", "Dental", "Technical Cartification", "Meal Allowance", "Transport Allowance",
        "Regular Hours", "Mondays-Fridays"
    ]

    var body: some View {
        VStack(alignment: .leading) {
            TextView(text: "Informations", size: 14, weight: .bold)
            optionView(title: "Qualification", subtitle: "Bachelor’s Degree")
            Divider()
            optionView(title: "Experience", subtitle: "3 Years")
            Divider()
            optionView(title: "Job Type", subtitle: "Full-Time")
            Divider()
            optionView(title: "Specialization", subtitle: "Design")

            Spacer().frame(height: 20)
            facilitiesView(list: facilitiesList)
        }.padding(.horizontal, 16)
    }

    func facilitiesView(list: [String]) -> some View {
        VStack(alignment: .leading) {
            TextView(text: "Facilities and Others", size: 14, weight: .bold)
            Spacer().frame(height: 10)
            ForEach(list, id: \.self) { text in
                HStack {
                    TextView(text: "\u{2022}", size: 12, color: Color.AppColor.secondaryColor)
                    TextView(text: "\(text)", size: 12, color: Color.AppColor.secondaryColor)
                        .opacity(0.7)
                }.padding(.bottom, 2)
            }
        }
    }

    func optionView(title: String, subtitle: String) -> some View {
        VStack(alignment: .leading) {
            TextView(text: title, size: 12, weight: .bold)
            TextView(text: subtitle, size: 12, weight: .regular).opacity(0.7)
        }.padding(.vertical, 5)
    }
}
