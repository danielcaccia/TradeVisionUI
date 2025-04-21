//
//  TradeVisionCancelButtonModifier.swift
//  TradeVisionUI
//
//  Created by Daniel Caccia on 16/04/25.
//

import SwiftUI

struct TradeVisionCancelButtonModifier: ViewModifier {
    @Environment(\.colorScheme) private var systemScheme
    @Environment(\.tradeVisionColorScheme) private var userPreference
    @Environment(\.dismiss) var dismiss
    
    func body(content: Content) -> some View {
        let theme = TradeVisionTheme.current(for: systemScheme, preference: userPreference)
        
        content
            .toolbar {
                #if os(iOS)
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Cancel") {
                        dismiss()
                    }
                    .foregroundColor(theme.accent)
                }
                #endif
            }
    }
}
