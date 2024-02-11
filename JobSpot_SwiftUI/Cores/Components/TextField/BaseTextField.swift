//
//  BaseTextField.swift
//  JobSpot_SwiftUI
//
//  Created by Enigma Kod on 11/02/2024.
//

import SwiftUI

struct BaseTextField: View {
    let title: String
    @Binding private var text: String

    @State private var isEditing: Bool = false

    init(title: String? = nil, text: Binding<String>) {
        self.title = title ?? "Text"
        self._text = text
    }

    var body: some View {
        VStack(alignment: .leading) {
            TextView(text: title)
            Spacer().frame(height: 5)
            TextField("Enter \(title)", text: $text, onEditingChanged: { isEditing = $0 })
                .textFieldStyle(BasTextFieldStyle())
                .padding(.vertical, 12)
                .padding(.horizontal, 16)
                .background(border)
        }
    }

    var border: some View {
        RoundedRectangle(cornerRadius: 8)
//            .background(Color.gray)
            .stroke(lineWidth: 2)
            .fill(Color.gray.opacity(0.2))
    }
}

// MARK: - Text Style

struct BasTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<_Label>) -> some View {
        configuration
            .font(.system(.footnote, weight: .light))
    }
}

// struct BaseTextField_Previews: PreviewProvider {
//    static var previews: some View {
//        BaseTextField()
//    }
// }