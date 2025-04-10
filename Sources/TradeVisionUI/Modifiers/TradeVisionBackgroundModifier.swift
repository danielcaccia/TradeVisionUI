//
//  TradeVisionBackgroundModifier.swift
//  TradeVisionUI
//
//  Created by Daniel Caccia on 10/04/25.
//

import SwiftUI

public struct TradeVisionBackgroundModifier: ViewModifier {
    @Environment(\.colorScheme) private var systemScheme
    @Environment(\.tradeVisionColorScheme) private var userPreference

    let modifier: BackgroundModifierType
    
    public func body(content: Content) -> some View {
        let theme = TradeVisionTheme.current(for: systemScheme, preference: userPreference)

        return content
            .background(modifier.color(for: theme).ignoresSafeArea())
    }
}
