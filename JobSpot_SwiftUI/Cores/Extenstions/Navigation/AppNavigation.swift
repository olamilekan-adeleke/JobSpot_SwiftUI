//
//  AppNavigation.swift
//  JobSpot_SwiftUI
//
//  Created by Enigma Kod on 19/02/2024.
//

import SwiftUI

enum CurrentView: Int {
    case onboarding
    case login
    case main
}

class AppNavigationState: ObservableObject {
    @Published var routes: [AppRoute] = []

    func push(_ route: AppRoute) {
        routes.append(route)
    }

    func pop() {
        routes.removeLast()
    }

    func popUntil(_ route: AppRoute) {
        while let lastRoute = routes.last, lastRoute != route {
            routes.removeLast()
        }
    }
}

@ViewBuilder
func handleNavigationDestination(_ route: AppRoute) -> some View {
    switch route {
        case .auth(let route): AppRoute.goOnboardingRoute(route)
        case .home(let route): AppRoute.goHomeRoutes(route)
    }
}
