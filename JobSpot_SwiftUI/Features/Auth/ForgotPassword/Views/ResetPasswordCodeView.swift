//
//  ResetPasswordCodeView.swift
//  JobSpot_SwiftUI
//
//  Created by Enigma Kod on 11/02/2024.
//

import SwiftUI

struct ResetPasswordCodeView: View {
    @EnvironmentObject var appNavigator: AppNavigationState

    @State private var codeText = ""
    let emailAddress: String

    var body: some View {
        VStack {
            Group {
                TextView(text: "Check Your Email", size: 30, weight: .semibold)
                    .frame(maxWidth: .infinity)
                TextView(text: "We have sent the reset password to the email address \n\(emailAddress)", size: 12, weight: .light)
                    .opacity(0.7)
                    .multilineTextAlignment(.center)
                    .frame(maxWidth: .infinity)

                Spacer().frame(height: 45)
            }

            Group {
                Image("forgot_password_image")
                    .frame(width: 118, height: 93)
                Spacer().frame(height: 70)
            }

            Group {
                BaseTextField(title: "Code", text: $codeText, placeholder: "Enter 6 digit code")
                Spacer().frame(height: 15)
                TextView(attributedString: createResentText(), size: 12, weight: .light)
            }

            Spacer()

            Group {
                BaseButton(config: .init(title: "Submit Code", type: .primary)) {
                    appNavigator.popUntil(AppRoute.auth(.login))
                }
                Spacer().frame(height: 10)
                BaseButton(config: .init(title: "Open Email", type: .secondary)) {}
            }
            Spacer().frame(height: 30)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .padding([.horizontal, .vertical], 16)
    }
}

extension ResetPasswordCodeView {
    private func createResentText() -> AttributedString {
        var msg1: AttributedString { return AttributedString("You have not received the email? ") }

        var msg2: AttributedString {
            var result = AttributedString("Resend?")
            result.foregroundColor = UIColor(fromHex: "FCA34D")
            result.underlineColor = UIColor(fromHex: "FCA34D")
            result.underlineStyle = Text.LineStyle(pattern: .solid)
            result.font = .system(size: 11, weight: .bold)
            return result
        }

        return msg1 + msg2
    }
}

struct ResetPasswordCodeView_Previews: PreviewProvider {
    static var previews: some View {
        ResetPasswordCodeView(emailAddress: "brandonelouis@gmial.com")
    }
}
