//
//  MultipleTextField.swift
//  JobSpot_SwiftUI
//
//  Created by Enigma Kod on 14/02/2024.
//

import SwiftUI

struct MultipleTextField: View {
    let title: String
    let placeholder: String?
        
    @Binding private var text: String
        
    private let estimatedLineHeight: CGFloat = 22 // Estimated line height for the system font at default size
    let numberOfLines: Int
        
    init(title: String? = nil, text: Binding<String>, placeholder: String? = nil, numberOfLines: Int? = nil) {
        self.title = title ?? "Text"
        self._text = text
        self.placeholder = placeholder
        self.numberOfLines = numberOfLines ?? 1
    }
        
    var body: some View {
        VStack(alignment: .leading) {
            TextView(text: title)
            Spacer().frame(height: 5)
            TextEditor(text: $text)
                .scrollContentBackground(.hidden)
                .textFieldStyle(BasTextFieldStyle())
                .frame(height: estimatedLineHeight * CGFloat(numberOfLines))
                .padding(.vertical, 12)
                .padding(.horizontal, 16)
                .background(border)
                .font(.system(.footnote, weight: .light))
        }
    }
        
    var border: some View {
        RoundedRectangle(cornerRadius: 8)
            .stroke(lineWidth: 2)
            .fill(Color.gray.opacity(0.2))
    }
}
    
// struct MultipleTextField_Previews: PreviewProvider {
//    static var previews: some View {
//        MultipleTextField()
//    }
// }
