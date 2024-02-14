//
//  UploadCVView.swift
//  JobSpot_SwiftUI
//
//  Created by Enigma Kod on 13/02/2024.
//

import SwiftUI

struct UploadCVView: View {
    @State private var infoText = ""

    var body: some View {
        VStack(alignment: .leading) {
            VStack(alignment: .leading) {
                TextView(text: "Upload CV", size: 14, weight: .bold)
                Spacer().frame(height: 3)
                TextView(text: "Add your CV/Resume to apply for a job", size: 12)
                    .opacity(0.7)
            }

            Spacer().frame(height: 20)
            SelectCvView()

            Spacer().frame(height: 20)
            SelectedCvView()

            Spacer().frame(height: 20)
            MultipleTextField(title: "Information", text: $infoText, placeholder: "Explain why you are the right person for this job", numberOfLines: 5)

//            BaseTextField(title: "Information", text: $infoText, placeholder: "Explain why you are the right person for this job")
        }
        .padding(.horizontal, 16)
    }
}

private struct SelectCvView: View {
    var body: some View {
        HStack(alignment: .center) {
            Image(systemName: "doc.badge.arrow.up").frame(height: 24).opacity(0.5)
            Spacer().frame(width: 10)
            TextView(text: "Upload CV/Resume", size: 12).opacity(0.7)
        }
        .padding(.vertical, 20)
        .frame(maxWidth: .infinity)
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .strokeBorder(style: StrokeStyle(lineWidth: 2, dash: [10, 5]))
                .foregroundColor(Color.gray.opacity(0.3))
        )
    }
}

private struct SelectedCvView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image("pdf_icon").resizable().frame(width: 44, height: 44)

                Spacer().frame(width: 10)

                VStack(alignment: .leading) {
                    TextView(text: "Jamet kudasi - CV - UI/UX Designer", size: 13)
                    Spacer().frame(height: 2)
                    TextView(text: "867 Kb \u{2022} 14 Feb 2022 at 11:30 am", size: 12).opacity(0.5)
                }

                Spacer()
            }

            Spacer().frame(height: 20)

            HStack {
                Spacer().frame(width: 10)
                Image(systemName: "trash").renderingMode(.template).foregroundColor(Color.red)
                Spacer().frame(width: 10)
                TextView(text: "Remove file", size: 12, color: Color.red)
            }
        }
        .padding(.vertical, 20)
        .padding(.horizontal, 15)
        .frame(maxWidth: .infinity)
        .background(Color(uiColor: UIColor(fromHex: "f0edf8")!))
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .strokeBorder(style: StrokeStyle(lineWidth: 2, dash: [10, 5]))
                .foregroundColor(Color.gray.opacity(0.3))
        )
        .clipShape(RoundedRectangle(cornerRadius: 16))
    }
}
