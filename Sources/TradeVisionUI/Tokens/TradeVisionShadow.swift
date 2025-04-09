//
//  TradeVisionShadow.swift
//  TradeVisionUI
//
//  Created by Daniel Caccia on 09/04/25.
//

import SwiftUI

/// An enum representing predefined shadow styles for the TradeVision UI.
/// This enum is used to provide consistent shadow styling across the application.
///
/// - `regular`: A standard shadow style with a radius of 1 point, an X offset of 1 point, and a Y offset of 2 points.
///   This shadow is commonly used for general UI components, such as buttons or cards, that need a subtle lift effect.
public enum TradeVisionShadow {
    /// Regular shadow style with a subtle offset and radius.
    public static func regular(using theme: Theme) -> ShadowStyle {
        ShadowStyle(color: theme.shadowColor, radius: 1, x: 1, y: 2)
    }
}

/// A struct representing the shadow properties applied to UI components.
/// This struct encapsulates the color, radius, and offset values for shadows used in the TradeVision UI.
///
/// The shadow color is automatically determined based on the current system theme and user color preferences.
///
/// - `color`: The color of the shadow, determined by the current theme and system color scheme, with an opacity of 0.1.
/// - `radius`: The blur radius of the shadow, which controls its softness. A higher radius results in a more diffused shadow.
/// - `x`: The horizontal offset of the shadow. Positive values move the shadow to the right, and negative values move it to the left.
/// - `y`: The vertical offset of the shadow. Positive values move the shadow downward, and negative values move it upward.
///
/// The shadow color is dynamically set based on the user's theme and color scheme, ensuring consistency with the overall design.
public struct ShadowStyle: Sendable {
    /// The color of the shadow, determined by the current theme and color scheme.
    public let color: Color
    /// The blur radius of the shadow.
    public let radius: CGFloat
    /// The horizontal offset of the shadow.
    public let x: CGFloat
    /// The vertical offset of the shadow.
    public let y: CGFloat
    
    /// Initializes a new shadow style with the specified radius, horizontal offset (x), and vertical offset (y).
    /// The shadow color is set based on the current theme and user color preference.
    ///
    /// - Parameters:
    ///   - color: The color of the shadow.
    ///   - radius: The blur radius of the shadow.
    ///   - x: The horizontal offset of the shadow.
    ///   - y: The vertical offset of the shadow.
    public init(color: Color, radius: CGFloat, x: CGFloat, y: CGFloat) {
        self.color = color
        self.radius = radius
        self.x = x
        self.y = y
    }
}
