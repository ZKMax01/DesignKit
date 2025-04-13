//
//  Colors.swift
//  DesignKit
//
//  Created by ZKMax01 on 12/04/2025.
//

import SwiftUI

extension Color {
    init(named colorName: String, in bundle: Bundle = Bundle.module) {
        if let color = UIColor(named: colorName, in: bundle, compatibleWith: nil) {
            self = Color(color)
        } else {
            self = Color.black // Fallback to black if the color is not found
        }
    }
}

public extension Color {
    struct App {
        public struct Surface {
            public static let xHigh = Color(named: "surface.x-high")
            public static let xLow = Color(named: "surface.x-low")
            public static let brand = Color(named: "surface.brand")
            public static let danger = Color(named: "surface.danger")
            public static let dangerVariant = Color(named: "surface.danger-variant")
            public static let warning = Color(named: "surface.warning")
            public static let warningVariant = Color(named: "surface.warning-variant")
        }
        public struct Content {
            public struct OnNeutral {
                public static let xxHigh = Color(named: "content.on-neutral.xx-high")
                public static let medium = Color(named: "content.on-neutral.medium")
                public static let low = Color(named: "content.on-neutral.low")
                public static let danger = Color(named: "content.on-neutral.danger")
                public static let warning = Color(named: "content.on-neutral.warning")
            }
        }
        public struct State {
            public struct Default {
                public static let hover = Color(named: "state.default.hover")
                public static let focus = Color(named: "state.default.focus")
            }
        }
    }
}
