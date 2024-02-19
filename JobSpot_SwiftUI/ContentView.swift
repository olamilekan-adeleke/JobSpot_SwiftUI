//
//  ContentView.swift
//  JobSpot_SwiftUI
//
//  Created by Enigma Kod on 04/02/2024.
//

import SwiftUI

struct ContentView: View {
    @StateObject var appNavigator = AppNavigationState()

    var body: some View {
        Group {
            NavigationStack(path: $appNavigator.routes) {
                OnboardingView() // .environmentObject(appNavigator)
                    .navigationDestination(for: AppRoute.self) { route in
                        handleNavigationDestination(route)
                    }
            }
            .onChange(of: appNavigator.routes, perform: { newValue in
                    // TODO: Create a Logger for Navigator to format and pretty print this State:: [JobSpot_SwiftUI.AppRoute.auth(JobSpot_SwiftUI.OnboardingRoutes.login), JobSpot_SwiftUI.AppRoute.home(JobSpot_SwiftUI.HomeRoutes.homeView)]
                print("State:: \(newValue)")
            })
            .navigationViewStyle(.stack)
        }.environmentObject(appNavigator)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
