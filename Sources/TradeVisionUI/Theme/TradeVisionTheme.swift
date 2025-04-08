//
//  TradeVisionTheme.swift
//  TradeVisionUI
//
//  Created by Daniel Caccia on 08/04/25.
//

import SwiftUI

public struct TradeVisionTheme {
    public static func current(for systemScheme: ColorScheme, preference: TradeVisionColorScheme) -> Theme {
        switch preference {
        case .system:
            return systemScheme == .dark ? DarkTheme() : LightTheme()
        case .dark:
            return DarkTheme()
        case .light:
            return LightTheme()
        }
    }
}
