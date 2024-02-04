//
//  TextView.swift
//  JobSpot_SwiftUI
//
//  Created by Enigma Kod on 04/02/2024.
//

import SwiftUI

struct TextView: View {
    let text: String
    let attributedString: AttributedString?
    let size: Double
    let weight: Font.Weight?

    init(text: String, size: Double? = nil, weight: Font.Weight? = .regular) {
        self.text = text
        self.size = size ?? 14
        self.weight = weight
        self.attributedString = nil
    }

    init(attributedString: AttributedString, size: Double? = nil, weight: Font.Weight? = .regular) {
        self.attributedString = attributedString
        self.size = size ?? 14
        self.weight = weight
        self.text = ""
    }

    var body: some View {
        if attributedString != nil {
            return Text(attributedString!).font(.system(size: size, weight: weight))
        }

        return Text(text).font(.system(size: size, weight: weight))
    }
}
