//
//  AppNavigation.swift
//  JobSpot_SwiftUI
//
//  Created by Enigma Kod on 19/02/2024.
//

import SwiftUI

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

    func pushReplaces(_ route: AppRoute) {
        if !routes.isEmpty { routes.removeLast() }
        push(route)
    }

    func pushAndRemoveAll(_ route: AppRoute) {
        if routes.isEmpty == false { routes.removeAll() }
        push(route)
    }
}

@ViewBuilder
func handleNavigationDestination(_ route: AppRoute) -> some View {
    switch route {
        case .auth(let route): AppRoute.goOnboardingRoute(route)
        case .home(let route): AppRoute.goHomeRoutes(route)
        case .company(let route): AppRoute.goCompanyRoutes(route)
        case .job(let route): AppRoute.goJobRoutes(route)
    }
}
