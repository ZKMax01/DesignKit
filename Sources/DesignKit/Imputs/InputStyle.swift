//
//  InputStyle.swift
//  DesignKit
//
//  Created by ZKMax01 on 12/04/2025.
//

import SwiftUI

private struct InputStyleKey: EnvironmentKey {
    static let defaultValue: InputStyle = InputStyle()
}

// Create a custom structure for the style values
public struct InputStyle: @unchecked Sendable {
    let backgroundColor: Color
    let borderColor: Color
    let textColor: Color
    let placeholderColor: Color
    let validationMessageColor: Color
    let font: Font
    let padding: CGFloat
    let borderWidth: CGFloat
    let cornerRadius: CGFloat
    
    // Provide an initializer to set all properties
    public init(
        backgroundColor: Color = Color.App.Surface.xLow,
        borderColor: Color = Color.App.Content.OnNeutral.medium,
        textColor: Color = Color.App.Content.OnNeutral.xxHigh,
        placeholderColor: Color = Color.App.Content.OnNeutral.low,
        validationMessageColor: Color = Color.App.Content.OnNeutral.danger,
        font: Font = .App.Label.s,
        padding: CGFloat = Styling.spacingS,
        borderWidth: CGFloat = Styling.strokeL,
        cornerRadius: CGFloat = Styling.cornerRadiusInput
    ) {
        self.backgroundColor = backgroundColor
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
    var inputStyle: InputStyle {
        get { self[InputStyleKey.self] }
        set { self[InputStyleKey.self] = newValue }
    }
}
