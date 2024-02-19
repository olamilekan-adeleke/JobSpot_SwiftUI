//
//  company_routes.swift
//  JobSpot_SwiftUI
//
//  Created by Enigma Kod on 19/02/2024.
//

import SwiftUI

enum CompanyRoutes: Hashable {
    case companyDetails
}

extension AppRoute {
    @ViewBuilder
    static func goCompanyRoutes(_ route: CompanyRoutes) -> some View {
        switch route {
            case .companyDetails: CompanyDetailsView()
        }
    }
}
