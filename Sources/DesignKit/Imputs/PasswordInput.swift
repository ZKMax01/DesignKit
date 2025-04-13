//
//  PasswordInput.swift
//  DesignKit
//
//  Created by ZKMax01 on 12/04/2025.
//

import SwiftUI

public struct PasswordInput: View {
    @Environment(\.inputStyle) var inputStyle
    
    @Binding var text: String
    var placeholder: String
    var passwordMinLength: Int
    var validationCharacterMessage: String
    var validationSymbolMessage: String
    
    @State private var isValidPassword: Bool = true
    @State private var errorMessage: String = ""
    
    private let passwordPattern = "^(?=.*[A-Z])(?=.*[!@#$&*]).{8,}$" // Minimum 8 chars, 1 uppercase, 1 symbol

    public init(
        text: Binding<String>,
        placeholder: String,
        passwordMinLength: Int,
        validationCharacterMessage: String,
        validationSymbolMessage: String
    ) {
        self._text = text
        self.placeholder = placeholder
        self.passwordMinLength = passwordMinLength
        self.validationCharacterMessage = validationCharacterMessage
        self.validationSymbolMessage = validationSymbolMessage
    }

    public var body: some View {
        VStack {
            SecureField(placeholder, text: $text)
                .padding(inputStyle.padding)
                .background(inputStyle.backgroundColor)
                .overlay(
                    RoundedRectangle(cornerRadius: inputStyle.cornerRadius)
                                .stroke(isValidPassword ? inputStyle.borderColor : inputStyle.validationMessageColor, lineWidth: inputStyle.borderWidth)
                )
                .foregroundColor(inputStyle.textColor)
                .font(inputStyle.font)
                .onChange(of: text) { newValue in
                    // Check password validation as the text changes
                    validatePassword(password: newValue)
                }

            // Show validation message if password is invalid
            if !isValidPassword {
                Text(errorMessage)
                    .foregroundColor(inputStyle.validationMessageColor)
                    .font(.caption)
                    .padding([.top], 5)
            }
        }
    }
    
    private func validatePassword(password: String) {
        if password.count < passwordMinLength {
            isValidPassword = false
            errorMessage = validationCharacterMessage
        } else if !NSPredicate(format: "SELF MATCHES %@", passwordPattern).evaluate(with: password) {
            isValidPassword = false
            errorMessage = validationSymbolMessage
        } else {
            isValidPassword = true
        }
    }
}
