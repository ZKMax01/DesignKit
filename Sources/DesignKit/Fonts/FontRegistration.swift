//
//  File.swift
//  DesignKit
//
//  Created by ZKMax01 on 12/04/2025.
//

import UIKit
import CoreGraphics
import CoreText

public enum FontError: Swift.Error {
    case failedToRegisterFont(fontName: String)
    case failedToFindAsset
    case failedToGetProvider
}

func registerFont(named name: String) throws {
    guard let asset = NSDataAsset(name: "Fonts/\(name)", bundle: Bundle.module) else {
        throw FontError.failedToFindAsset
    }
    guard let provider = CGDataProvider(data: asset.data as NSData) else {
        throw FontError.failedToGetProvider
    }
    guard let font = CGFont(provider), CTFontManagerRegisterGraphicsFont(font, nil) else {
        throw FontError.failedToRegisterFont(fontName: name)
    }
}
