//
//  auth_route.swift
//  JobSpot_SwiftUI
//
//  Created by Enigma Kod on 19/02/2024.
//

import SwiftUI

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
