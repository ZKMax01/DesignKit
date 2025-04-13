//
//  TextImput.swift
//  DesignKit
//
//  Created by ZKMax01 on 12/04/2025.
//

import SwiftUI

public struct TextImput: View {
    @Environment(\.imputStyle) private var imputStyle
    
    @Binding var text: String
    var placeholder: String

    public init(text: Binding<String>, placeholder: String) {
        self._text = text
        self.placeholder = placeholder
    }

    public var body: some View {
        TextField(placeholder, text: $text)
            .padding(imputStyle.padding)
            .background(RoundedRectangle(cornerRadius: imputStyle.cornerRadius)
                .stroke(imputStyle.borderColor, lineWidth: imputStyle.borderWidth))
            .foregroundColor(imputStyle.textColor)
            .font(imputStyle.font)
    }
}
