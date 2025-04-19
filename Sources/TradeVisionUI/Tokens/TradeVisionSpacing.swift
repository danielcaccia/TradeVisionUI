//
//  TradeVisionSpacing.swift
//  TradeVisionUI
//
//  Created by Daniel Caccia on 09/04/25.
//

import Foundation

/// An enum representing various spacing values used in the TradeVision UI.
/// These values are intended to provide consistent padding and margin spacing across the application.
///
/// - `zero`: Sets spacing to value 0 points.
/// - `xs`: Extra small spacing, typically used for very tight layouts. Value is 4 points.
/// - `sm`: Small spacing, commonly used for minor padding or margin. Value is 8 points.
/// - `md`: Medium spacing, used for standard padding or margin between elements. Value is 12 points.
/// - `lg`: Large spacing, typically for more pronounced separation of UI elements. Value is 16 points.
/// - `xl`: Extra large spacing, used for significant separation of elements or large gaps in the layout. Value is 24 points.
///
/// These static constants can be used throughout the app to maintain a consistent visual rhythm.
public enum TradeVisionSpacing {
    /// No spacing (0 points).
    public static let zero: CGFloat = 0
    /// Extra small spacing (4 points).
    public static let xs: CGFloat = 4
    /// Small spacing (8 points).
    public static let sm: CGFloat = 8
    /// Medium spacing (12 points).
    public static let md: CGFloat = 12
    /// Large spacing (16 points).
    public static let lg: CGFloat = 16
    /// Extra large spacing (24 points).
    public static let xl: CGFloat = 24
}
