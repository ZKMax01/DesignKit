//
//  File.swift
//  DesignKit
//
//  Created by ZKMax01 on 12/04/2025.
//

import SwiftUI

public struct FontMaker {
    
    public static func loadInterFont() {
        let name = "Inter-Variable"
        do {
            try registerFont(named: name)
        } catch FontError.failedToRegisterFont(let name) {
            fatalError("Failed to register font: \(name)")
        } catch {
            let reason = error.localizedDescription
            fatalError("Failed to register font: \(reason)")
        }
    }
    
    /// Returns a SwiftUI Font using Inter with a given weight
    public static func interFont(size: CGFloat, weight: Int) -> Font {
        let standardFontNames: [Int: String] = [
            100: "Inter-Thin",
            200: "Inter-ExtraLight",
            300: "Inter-Light",
            400: "Inter-Regular",
            500: "Inter-Medium",
            600: "Inter-SemiBold",
            700: "Inter-Bold",
            800: "Inter-ExtraBold",
            900: "Inter-Black"
        ]
        
        if let fontName = standardFontNames[weight] {
            return Font.custom(fontName, size: size)
        } else {
            let normalizedWeight = CGFloat(weight) / 1000
            let descriptor = UIFontDescriptor(name: "Inter", size: size).addingAttributes([
                UIFontDescriptor.AttributeName.traits: [
                    UIFontDescriptor.TraitKey.weight: normalizedWeight
                ]
            ])
            
            let uiFont = UIFont(descriptor: descriptor, size: size)
            return Font(uiFont)
        }
    }
}

public extension Font {
    struct App {
        public struct Label {
            public static let m = FontMaker.interFont(size: 16, weight: 500)
            public static let s = FontMaker.interFont(size: 14, weight: 550)
        }
        public struct Body {
            public static let m = FontMaker.interFont(size: 16, weight: 400)
        }
    }
}
