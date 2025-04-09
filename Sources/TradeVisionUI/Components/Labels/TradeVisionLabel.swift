//
//  TradeVisionLabel.swift
//  TradeVisionUI
//
//  Created by Daniel Caccia on 08/04/25.
//

import SwiftUI

public struct TradeVisionLabel: View {
    @Environment(\.colorScheme) private var systemScheme
    @Environment(\.tradeVisionColorScheme) private var userPreference

    let text: String
    let type: TradeVisionLabelType
    
    public init(_ text: String, type: TradeVisionLabelType) {
        self.text = text
        self.type = type
    }

    public var body: some View {
        let theme = TradeVisionTheme.current(for: systemScheme, preference: userPreference)

        Text(text)
            .font(type.font)
            .foregroundColor(type.labelColor(for: theme))
            .padding()
            .cornerRadius(TradeVisionCornerRadius.standard)
    }
}
