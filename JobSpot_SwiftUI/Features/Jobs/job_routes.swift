//
//  job_routes.swift
//  JobSpot_SwiftUI
//
//  Created by Enigma Kod on 19/02/2024.
//

import SwiftUI

enum JobRoutes {
    case jobDetails
    case jobApplication
}

extension AppRoute {
    @ViewBuilder
    static func goJobRoutes(_ route: JobRoutes) -> some View {
        switch route {
            case .jobDetails: JobDetailView()
            case .jobApplication: JobApplicationView()
        }
    }
}
