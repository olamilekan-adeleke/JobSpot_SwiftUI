//
//  JobDetailView.swift
//  JobSpot_SwiftUI
//
//  Created by Enigma Kod on 12/02/2024.
//

import SwiftUI

struct JobDetailView: View {
    @EnvironmentObject var appNavigator: AppNavigationState

    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack {
                JobDetailHeaderView()

                Spacer().frame(height: 20)
                JobDetailsDescriptionView()

                Spacer().frame(height: 20)
                JobDetailLocationView()

                Spacer().frame(height: 20)
                JobDetailInformationView()

                Spacer().frame(height: 20)
                BaseButton(config: .init(title: "Apply", type: .primary)) {
                    appNavigator.push(AppRoute.job(.jobApplication))
                }
                .padding(.horizontal, 16)

                Spacer().frame(height: 30)
            }
            .background(Color.AppColor.appBackgroundColor)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            .background(Color.AppColor.appBackgroundColor)
            .padding(.vertical, 16)
        }
    }
}

struct JobDetailView_Previews: PreviewProvider {
    static var previews: some View {
        JobDetailView()
    }
}
