//
//  OnboardingView.swift
//  JobSpot_SwiftUI
//
//  Created by Enigma Kod on 04/02/2024.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        VStack {
            TextView(text: "Jobspot", weight: .semibold)
                .frame(maxWidth: .infinity, alignment: .trailing)

            Spacer().frame(height: 80)

            Image("onboarding")

            Spacer().frame(height: 50)

            TextView(attributedString: getText(), size: 40, weight: .bold)
                .frame(maxWidth: .infinity, alignment: .leading)

            TextView(text: "Explore all the most exciting job roles based on your interest and study major.", weight: .thin)
                .frame(maxWidth: .infinity, alignment: .leading)

            Spacer().frame(height: 20)

            Image(systemName: "arrow.forward")
                .resizable()
                .frame(width: 30, height: 30)
                .foregroundColor(Color.white)
                .padding(.all, 20)
                .background(Color(uiColor: UIColor(fromHex: "130160")!))
                .clipShape(Circle())
                .frame(maxWidth: .infinity, alignment: .trailing)
                .onTapGesture { onButtonTapped() }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .padding([.horizontal], 16)
    }
}

// MARK: - Stuff

extension OnboardingView {
    private func getText() -> AttributedString {
        var msg1: AttributedString { return AttributedString("Find Your") }

        var msg2: AttributedString {
            var result = AttributedString("\nDream Job")
            result.foregroundColor = UIColor(fromHex: "FCA34D")
            result.underlineColor = UIColor(fromHex: "FCA34D")
            result.underlineStyle = Text.LineStyle(pattern: .solid)
            return result
        }

        var msg3: AttributedString { return AttributedString("\nHere") }

        return msg1 + msg2 + msg3
    }

    private func onButtonTapped() {
        print("Tapped")
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
