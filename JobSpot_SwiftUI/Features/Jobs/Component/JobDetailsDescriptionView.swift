//
//  JobDetailsDescriptionView.swift
//  JobSpot_SwiftUI
//
//  Created by Enigma Kod on 13/02/2024.
//

import SwiftUI

struct JobDetailsDescriptionView: View {
    let requirementList = [
        "Sed ut perspiciatis unde omnis iste natus error sit.",
        "Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur & adipisci velit.",
        "Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit.",
        "Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur",
    ]

    var body: some View {
        VStack {
            descriptionView()
            Spacer().frame(height: 20)
            requirementsView(list: requirementList)
        }
        .padding(.horizontal, 16)
    }

    func requirementsView(list: [String]) -> some View {
        VStack(alignment: .leading) {
            TextView(text: "Requirements", size: 14, weight: .bold)
            Spacer().frame(height: 10)
            ForEach(list, id: \.self) { text in
                HStack {
                    TextView(text: "\u{2022}", size: 12)
                    TextView(text: "\(text)", size: 12).opacity(0.7)
                }
                .padding(.bottom, 2)
            }
        }
    }

    func descriptionView() -> some View {
        VStack(alignment: .leading) {
            TextView(text: "Job Description", size: 14, weight: .bold)
            Spacer().frame(height: 10)
            TextView(
                text: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem ...",
                size: 12
            )
            .opacity(0.7)
        }
    }
}
