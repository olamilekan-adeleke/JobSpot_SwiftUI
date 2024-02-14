//
//  CompanyDetailJobListView.swift
//  JobSpot_SwiftUI
//
//  Created by Enigma Kod on 13/02/2024.
//

import SwiftUI

struct CompanyDetailJobListView: View {
    var body: some View {
        VStack(alignment: .leading) {
            ForEach(Range(0 ... 4), id: \.self) { _ in
                RecentJobItemView().padding(.bottom, 5)
            }
        }
        .background(Color.AppColor.appBackgroundColor)
    }
}
