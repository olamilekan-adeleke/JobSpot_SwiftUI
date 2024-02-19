//
//  JobApplicationView.swift
//  JobSpot_SwiftUI
//
//  Created by Enigma Kod on 13/02/2024.
//

import SwiftUI

struct JobApplicationView: View {
    @EnvironmentObject var appNavigator: AppNavigationState

    var body: some View {
        VStack {
            JobDetailHeaderView()

            Spacer().frame(height: 20)
            UploadCVView()

            Spacer()

            Spacer().frame(height: 20)
            BaseButton(config: .init(title: "Apply Now", type: .primary)) {
                appNavigator.popUntil(AppRoute.home(.homeView))
            }
            .padding(.horizontal, 16)

            Spacer().frame(height: 30)
        }
        .background(Color.AppColor.appBackgroundColor)
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .padding(.vertical, 16)
    }
}

struct JobApplicationView_Previews: PreviewProvider {
    static var previews: some View {
        JobApplicationView()
    }
}
