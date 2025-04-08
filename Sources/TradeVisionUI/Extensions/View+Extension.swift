//
//  View+Extension.swift
//  TradeVisionUI
//
//  Created by Daniel Caccia on 08/04/25.
//

import SwiftUI

public extension View {
    func tradeVisionTheme(_ scheme: TradeVisionColorScheme) -> some View {
        self.modifier(TradeVisionThemeEnvironment(colorScheme: scheme))
    }
}
