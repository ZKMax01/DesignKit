//
//  ImputStyle.swift
//  DesignKit
//
//  Created by ZKMax01 on 12/04/2025.
//

import SwiftUI

private struct ImputStyleKey: EnvironmentKey {
    static let defaultValue: ImputStyle = ImputStyle()
}

// Create a custom structure for the style values
public struct ImputStyle: @unchecked Sendable {
    let borderColor: Color
    let textColor: Color
    let placeholderColor: Color
    let validationMessageColor: Color
    let font: Font
    let padding: CGFloat
    let borderWidth: CGFloat
    let cornerRadius: CGFloat
    
    // Provide an initializer to set all properties
    init(
        borderColor: Color = Color.App.Content.OnNeutral.medium,
        textColor: Color = Color.App.Content.OnNeutral.xxHigh,
        placeholderColor: Color = Color.App.Content.OnNeutral.low,
        validationMessageColor: Color = Color.App.Content.OnNeutral.danger,
        font: Font = .App.Label.s,
        padding: CGFloat = Styling.spacingS,
        borderWidth: CGFloat = Styling.borderWidthInput,
        cornerRadius: CGFloat = Styling.cornerRadiusInput
    ) {
        self.borderColor = borderColor
        self.textColor = textColor
        self.placeholderColor = placeholderColor
        self.validationMessageColor = validationMessageColor
        self.font = font
        self.padding = padding
        self.borderWidth = borderWidth
        self.cornerRadius = cornerRadius
    }
}

// Extend EnvironmentValues to access the style
public extension EnvironmentValues {
    var imputStyle: ImputStyle {
        get { self[ImputStyleKey.self] }
        set { self[ImputStyleKey.self] = newValue }
    }
}
