//
//  TradeVisionThemeEnvironment.swift
//  TradeVisionUI
//
//  Created by Daniel Caccia on 08/04/25.
//

import SwiftUI

public struct TradeVisionThemeEnvironment: ViewModifier {
    let colorScheme: TradeVisionColorScheme

    public func body(content: Content) -> some View {
        content.environment(\.tradeVisionColorScheme, colorScheme)
    }
}
