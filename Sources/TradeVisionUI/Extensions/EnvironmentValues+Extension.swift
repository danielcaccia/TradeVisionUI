//
//  EnvironmentValues+Extension.swift
//  TradeVisionUI
//
//  Created by Daniel Caccia on 08/04/25.
//

import SwiftUI

private struct TradeVisionColorSchemeKey: EnvironmentKey {
    static let defaultValue: TradeVisionColorScheme = .system
}

public extension EnvironmentValues {
    var tradeVisionColorScheme: TradeVisionColorScheme {
        get { self[TradeVisionColorSchemeKey.self] }
        set { self[TradeVisionColorSchemeKey.self] = newValue }
    }
}
