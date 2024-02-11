//
//  HomeHeaderView.swift
//  JobSpot_SwiftUI
//
//  Created by Enigma Kod on 11/02/2024.
//

import SwiftUI

struct HomeHeaderView: View {
    var body: some View {
        HStack {
            TextView(text: "Hello \nOrlando Diggs.", size: 22, weight: .bold)
            Spacer()
            Image("person")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 46, height: 66)
                .clipShape(Circle())
        }
    }
}
