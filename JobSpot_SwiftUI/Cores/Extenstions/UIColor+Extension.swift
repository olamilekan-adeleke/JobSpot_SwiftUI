//
//  UIColor+Extension.swift
//  JobSpot_SwiftUI
//
//  Created by Enigma Kod on 04/02/2024.
//

import Foundation
import SwiftUI

// MARK: -  App Color

extension Color {
    enum AppColor {
        static let primaryColor = Color(uiColor: UIColor(fromHex: "130160")!)
        static let secondaryColor = Color(uiColor: UIColor(fromHex: "D6CDFE")!)

        static let appBackgroundColor = Color(uiColor: UIColor(fromHex: "F9F9F9")!)
    }
}

// MARK: - Helper

extension UIColor {
    convenience init? (fromHex hex: String) {
        let hexPattern = try! NSRegularExpression(
            pattern: "^[0-9a-fA-F]{6}$",
            options: [.anchorsMatchLines]
        )
        let range = NSRange(location: 0, length: hex.count)

        guard hexPattern.matches(in: hex, options: [], range: range).count == 1 else {
            return nil
        }

        let positionR = hex.index(hex.startIndex, offsetBy: 2)
        let positionG = hex.index(hex.startIndex, offsetBy: 4)

        guard let r = Double("0x" + hex.substring(to: positionR)),
              let g = Double("0x" + hex.substring(with: positionR ..< positionG)),
              let b = Double("0x" + hex.substring(from: positionG)) else { return nil }

        self.init(red: CGFloat(r / 255), green: CGFloat(g / 255), blue: CGFloat(b / 255), alpha: 1)
    }
}
