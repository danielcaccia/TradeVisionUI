//
//  TradeVisionDivider.swift
//  TradeVisionUI
//
//  Created by Daniel Caccia on 11/04/25.
//

import SwiftUI

public struct TradeVisionDivider: View {
    @Environment(\.colorScheme) private var systemScheme
    @Environment(\.tradeVisionColorScheme) private var userPreference

    public init() {}
    
    public var body: some View {
        let theme = TradeVisionTheme.current(for: systemScheme, preference: userPreference)

        Divider()
            .foregroundColor(theme.divider)
            .padding(.horizontal, TradeVisionSpacing.sm)
    }
}
