//
//  JobDetailLocationView.swift
//  JobSpot_SwiftUI
//
//  Created by Enigma Kod on 13/02/2024.
//

import MapKit
import SwiftUI

struct JobDetailLocationView: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(
            latitude: 25.7617,
            longitude: 80.1918
        ),
        span: MKCoordinateSpan(
            latitudeDelta: 10,
            longitudeDelta: 10
        )
    )

    var body: some View {
        VStack(alignment: .leading) {
            TextView(text: "Location", size: 14, weight: .bold)
            Spacer().frame(height: 3)
            TextView(text: "Overlook Avenue, Belleville, NJ, USA", size: 12).opacity(0.7)

            Spacer().frame(height: 10)
            Map(coordinateRegion: $region, showsUserLocation: true)
                .frame(height: 150)
                .clipShape(RoundedRectangle(cornerRadius: 8))
        }
        .padding(.horizontal, 16)
    }
}
