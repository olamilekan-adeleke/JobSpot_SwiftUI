//
//  CompanyDetailsView.swift
//  JobSpot_SwiftUI
//
//  Created by Enigma Kod on 13/02/2024.
//

import SwiftUI

struct CompanyDetailsView: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack {
                CompanyDetailHeaderView()

                Spacer().frame(height: 20)
                CompanyDetailButtonTabViewView()

                Spacer().frame(height: 20)
            }
            .background(Color.AppColor.appBackgroundColor)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            .background(Color.AppColor.appBackgroundColor)
            .padding(.vertical, 16)
        }
    }
}

struct CompanyDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        CompanyDetailsView()
    }
}
