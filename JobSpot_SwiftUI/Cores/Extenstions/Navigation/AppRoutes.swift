//
//  Route.swift
//  JobSpot_SwiftUI
//
//  Created by Enigma Kod on 17/02/2024.
//

import Foundation

enum AppRoute: Hashable {
    case auth(OnboardingRoutes)
    case home(HomeRoutes)
    case company(CompanyRoutes)
    case job(JobRoutes)
}
