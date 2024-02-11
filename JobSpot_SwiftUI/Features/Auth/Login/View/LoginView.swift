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
            Group {
                TextView(text: "Welcome Back", size: 30, weight: .semibold)
                    .frame(maxWidth: .infinity)
                TextView(text: "Lorem ipsum dolor sit amet, consectetur adipiscing \nelit, sed do eiusmod tempor", size: 12, weight: .light)
                    .opacity(0.7)
                    .multilineTextAlignment(.center)
                    .frame(maxWidth: .infinity)
            }

            Spacer().frame(height: 60)

            Group {
                BaseTextField(title: "Email", text: $emailText)
                Spacer().frame(height: 20)
                BaseTextField(title: "Password", text: $passwordText)
                TextView(text: "Forgot password", size: 11, weight: .light)
                    .opacity(0.7)
                    .frame(maxWidth: .infinity, alignment: .trailing)
            }

            Spacer().frame(height: 40)

            Group {
                BaseButton(config: .init(title: "Login", type: .primary)) {}
                Spacer().frame(height: 10)
                BaseButton(config: .init(title: "Sign Up", type: .secondary)) {}
                Spacer().frame(height: 16)
                TextView(attributedString: createAccountText(), size: 10, weight: .light)
            }
        }

        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .padding([.horizontal, .vertical], 16)
    }

    private func createAccountText() -> AttributedString {
        var msg1: AttributedString { return AttributedString("You don't have an account yet? ") }

        var msg2: AttributedString {
            var result = AttributedString("Sign In")
            result.foregroundColor = UIColor(fromHex: "FCA34D")
            result.underlineColor = UIColor(fromHex: "FCA34D")
            result.underlineStyle = Text.LineStyle(pattern: .solid)
            return result
        }

        return msg1 + msg2
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
