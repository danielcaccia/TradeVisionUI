//
//  TradeVisionCornerRadius.swift
//  TradeVisionUI
//
//  Created by Daniel Caccia on 09/04/25.
//

import Foundation

/// An enum representing the corner radius values used in the TradeVision UI.
/// This enum ensures consistent rounding of UI element corners across the application.
///
/// - `cornerRadius`: A standard corner radius, commonly used for rounded corners on buttons, cards, and other UI components.
///   The value is set to 12 points, providing a smooth, moderate rounding effect for most elements.
public enum TradeVisionCornerRadius {
    /// Small size corner radius used on specific cases across the application (8 points).
    public static let small: CGFloat = 8
    /// Standard corner radius used across the application (12 points).
    public static let standard: CGFloat = 12
}
