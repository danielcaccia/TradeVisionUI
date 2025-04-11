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
    let alignment: TextAlignment
    
    public init(_ text: String, type: TradeVisionLabelType, alignment: TextAlignment = .leading) {
        self.text = text
        self.type = type
        self.alignment = alignment
    }

    public var body: some View {
        let theme = TradeVisionTheme.current(for: systemScheme, preference: userPreference)

        Text(text)
            .multilineTextAlignment(alignment)
            .font(type.font)
            .foregroundColor(type.labelColor(for: theme))
            .frame(maxWidth: .infinity, alignment: alignment.toAlignment())
    }
}
