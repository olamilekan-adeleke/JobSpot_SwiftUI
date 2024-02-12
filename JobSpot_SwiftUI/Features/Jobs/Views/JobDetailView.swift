//
//  JobDetailView.swift
//  JobSpot_SwiftUI
//
//  Created by Enigma Kod on 12/02/2024.
//

import SwiftUI

struct JobDetailView: View {
    var body: some View {
        VStack {
            JobDetailHeaderView()
        }
        .background(Color.AppColor.appBackgroundColor)
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .background(Color.AppColor.appBackgroundColor)
        .padding(.vertical, 16)
    }
}

struct JobDetailView_Previews: PreviewProvider {
    static var previews: some View {
        JobDetailView()
    }
}
