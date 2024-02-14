//
//  ForgotPasswordView.swift
//  JobSpot_SwiftUI
//
//  Created by Enigma Kod on 11/02/2024.
//

import SwiftUI

struct ForgotPasswordView: View {
    @State private var emailText = ""

    var body: some View {
        VStack {
            Group {
                TextView(text: "Forgot Password?", size: 30, weight: .semibold)
                    .frame(maxWidth: .infinity)
                TextView(text: "To reset your password, you need your email or mobile \nnumber that can be authenticated", size: 12, weight: .light)
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
                BaseTextField(title: "Email", text: $emailText)
                Spacer().frame(height: 29)
            }

            Group {
                BaseButton(config: .init(title: "Reset Password", type: .primary)) {}
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .padding([.horizontal, .vertical], 16)
    }
}

struct ForgotPassword_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPasswordView()
    }
}
