//
//  HomeView.swift
//  JobSpot_SwiftUI
//
//  Created by Enigma Kod on 11/02/2024.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack {
                Spacer().frame(height: 16)
                HomeHeaderView()

                Spacer().frame(height: 40)
                HomeBannerView()

                Spacer().frame(height: 24)
                HomeJobStatsView()

                Spacer().frame(height: 24)
                HomeRecentJobListView()
            }
        }
        .background(Color.AppColor.appBackgroundColor)
        .padding([.horizontal], 16)
        .background(Color.AppColor.appBackgroundColor)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
