//
//  TradeVisionLabel.swift
//  TradeVisionUI
//
//  Created by Daniel Caccia on 08/04/25.
//

import SwiftUI

public struct TradeVisionLabel: View {
    let text: String

    @Environment(\.colorScheme) private var systemScheme
    @Environment(\.tradeVisionColorScheme) private var userPreference

    public init(_ text: String) {
        self.text = text
    }

    public var body: some View {
        let theme = TradeVisionTheme.current(for: systemScheme, preference: userPreference)

        Text(text)
            .foregroundColor(theme.primaryText)
            .padding()
            .background(theme.primaryBackground)
            .cornerRadius(8)
    }
}
