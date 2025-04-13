//
//  Text+Styling.swift
//  DesignKit
//
//  Created by ZKMax01 on 12/04/2025.
//

import SwiftUI

public extension View {
    func applyStyle(
        font: Font,
        letterSpacing: CGFloat = 0,
        lineHeight: CGFloat = 0
    ) -> some View {
        if #available(iOS 16.0, *) {
            return self.lineSpacing(lineHeight)
                .kerning(letterSpacing)
                .font(font)
        } else {
            return self.lineSpacing(lineHeight)
                .font(font)
        }
    }
}

// MARK: Label Styles
public extension View {
    func applyLabelMStyle() -> some View {
        self.applyStyle(
            font: .App.Label.m,
            letterSpacing: 0.16,
            lineHeight: 22
        )
    }
    
    func applyLabelSStyle() -> some View {
        self.applyStyle(
            font: .App.Label.s,
            letterSpacing: 0.16,
            lineHeight: 17
        )
    }
}

// MARK: Label Styles
public extension View {
    func applyBodyMStyle() -> some View {
        self.applyStyle(
            font: .App.Body.m,
            letterSpacing: 0.01,
            lineHeight: 22
        )
    }
}
