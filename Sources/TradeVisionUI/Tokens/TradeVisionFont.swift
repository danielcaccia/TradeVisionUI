//
//  TradeVisionFont.swift
//  TradeVisionUI
//
//  Created by Daniel Caccia on 08/04/25.
//

import SwiftUI

/// An enum representing predefined font styles used in the TradeVision UI.
/// This enum ensures consistent typography throughout the application, with predefined fonts for various UI elements.
///
/// - `header`: A bold font style typically used for large headings or titles. Set to 28 points with a medium weight.
/// - `section`: A font style for section titles or subsections, providing a clear distinction. Set to 17 points with a semibold weight.
/// - `title`: A regular font style for general titles or main content text. Set to 17 points with a regular weight.
/// - `subtitle`: A regular font style for subtitles or smaller heading-like text. Set to 16 points with a regular weight.
public enum TradeVisionFont {
    /// Font style for large headings or titles (28 points, medium weight).
    public static let header = Font.system(size: 28, weight: .medium)
    /// Font style for section titles (17 points, semibold weight).
    public static let sectionHeader = Font.system(size: 17, weight: .semibold)
    /// Font style for general titles or main content text (17 points, regular weight).
    public static let title = Font.system(size: 17, weight: .regular)
    /// Font style for subtitles or smaller heading-like text (16 points, regular weight).
    public static let subtitle = Font.system(size: 16, weight: .regular)
    /// Font style for buttons text (14 points, regular weight).
    public static let button = Font.system(size: 14, weight: .regular)
}
