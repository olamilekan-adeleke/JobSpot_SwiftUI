//
//  LoginView.swift
//  JobSpot_SwiftUI
//
//  Created by Enigma Kod on 11/02/2024.
//

import SwiftUI

struct LoginView: View {
    @State private var emailText = ""
    @State private var passwordText = ""

    var body: some View {
        VStack {
            TextView(text: "Welcome Back", size: 30, weight: .semibold)
                .frame(maxWidth: .infinity)
            TextView(text: "Lorem ipsum dolor sit amet, consectetur adipiscing \nelit, sed do eiusmod tempor", size: 12, weight: .light)
                .opacity(0.7)
                .multilineTextAlignment(.center)
                .frame(maxWidth: .infinity)

            Spacer().frame(height: 60)

            BaseTextField(title: "Email", text: $emailText)
            Spacer().frame(height: 20)
            BaseTextField(title: "Password", text: $passwordText)
            TextView(text: "Forgot password", size: 11, weight: .light)
                .opacity(0.7)
                .frame(maxWidth: .infinity, alignment: .trailing)

            Spacer().frame(height: 40)

            VStack {
                BaseButton(config: .init(title: "Login", type: .primary)) {}
                Spacer().frame(height: 10)
                BaseButton(config: .init(title: "Sign Up", type: .secondary)) {}
            }
        }

        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .padding([.horizontal, .vertical], 16)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
