//
//  TextInput.swift
//  DesignKit
//
//  Created by ZKMax01 on 12/04/2025.
//

import SwiftUI

public struct TextInput: View {
    @Environment(\.inputStyle) private var inputStyle
    
    @Binding var text: String
    var placeholder: String

    public init(text: Binding<String>, placeholder: String) {
        self._text = text
        self.placeholder = placeholder
    }

    public var body: some View {
        TextField(placeholder, text: $text)
            .padding(inputStyle.padding)
            .background(inputStyle.backgroundColor)
            .overlay(
                RoundedRectangle(cornerRadius: inputStyle.cornerRadius)
                            .stroke(inputStyle.borderColor, lineWidth: inputStyle.borderWidth)
            )
            .foregroundColor(inputStyle.textColor)
            .font(inputStyle.font)
    }
}
