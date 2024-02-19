//
//  Route.swift
//  JobSpot_SwiftUI
//
//  Created by Enigma Kod on 17/02/2024.
//

import SwiftUI

// struct NavigateEnvironmentKey: EnvironmentKey {
//    static var defaultValue: (AppRoute) -> Void = { _ in }
// }
//
// extension EnvironmentValues {
//    var navigate: (AppRoute) -> Void {
//        get { self[NavigateEnvironmentKey.self] }
//        set { self[NavigateEnvironmentKey.self] = newValue }
//    }
// }

// MARK: - Routes

enum AppRoute: Hashable {
    case auth(OnboardingRoutes)
    case home(HomeRoutes)
}

// MARK: - Home

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

// MARK: - Auth

enum OnboardingRoutes: Hashable {
    case intro
    case login
    case createAccount
    case forgotPassword
    case resetPassword(String)
}

extension AppRoute {
    @ViewBuilder
    static func goOnboardingRoute(_ route: OnboardingRoutes) -> some View {
        switch route {
            case .intro: OnboardingView()
            case .login: LoginView()
            case .createAccount: TextView(text: "Not Done Yet!")
            case .forgotPassword: ForgotPasswordView()
            case .resetPassword(let email): ResetPasswordCodeView(emailAddress: email)
        }
    }
}
