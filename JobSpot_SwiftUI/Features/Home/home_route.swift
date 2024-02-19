//
//  home_route.swift
//  JobSpot_SwiftUI
//
//  Created by Enigma Kod on 19/02/2024.
//

import SwiftUI

enum HomeRoutes: Hashable {
    case homeView
}

extension AppRoute {
    @ViewBuilder
    static func goHomeRoutes(_ route: HomeRoutes) -> some View {
        switch route {
            case .homeView: HomeView()
        }
    }
}
