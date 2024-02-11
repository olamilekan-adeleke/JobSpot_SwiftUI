//
//  BaseButton.swift
//  JobSpot_SwiftUI
//
//  Created by Enigma Kod on 11/02/2024.
//

import SwiftUI

struct BaseButton: View {
    let config: Config
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            TextView(text: config.title, size: 14, weight: .semibold)
                .frame(maxWidth: .infinity, maxHeight: 40)
        }
        .buttonStyle(config.buttonStyle())
    }
}

// MARK: - Style

struct BaseButtonStyle: ButtonStyle {
    let buttonColor: Color

    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .background(buttonColor)
            .foregroundStyle(.white)
            .clipShape(RoundedRectangle(cornerRadius: 8))
            .scaleEffect(configuration.isPressed ? 1.2 : 1)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
    }
}

// MARK: - Button Config

extension BaseButton {
    enum ButtonType { case primary, secondary }

    struct Config {
        let title: String
        let type: ButtonType

        init(title: String, type: ButtonType?) {
            self.title = title
            self.type = type ?? .primary
        }

        func buttonStyle() -> some ButtonStyle {
            switch type {
                case .primary: return BaseButtonStyle(buttonColor: Color.AppColor.primaryColor)
                case .secondary: return BaseButtonStyle(buttonColor: Color.AppColor.secondaryColor)
            }
        }
    }
}

struct BaseButton_Previews: PreviewProvider {
    static var previews: some View {
        BaseButton(config: .init(title: "Tap", type: .primary)) {}
    }
}