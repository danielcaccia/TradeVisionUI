//
//  TradeVisionNavigationBarModifier.swift
//  TradeVisionUI
//
//  Created by Daniel Caccia on 10/04/25.
//

import SwiftUI

struct TradeVisionNavigationBarModifier: ViewModifier {
    @Environment(\.colorScheme) private var systemScheme
    @Environment(\.tradeVisionColorScheme) private var userPreference
    
    let title: String
    
    func body(content: Content) -> some View {
        let theme = TradeVisionTheme.current(for: systemScheme, preference: userPreference)
        
        return content
            .navigationTitle(title)
            .foregroundColor(theme.primaryText)
            #if os(iOS)
            .navigationBarTitleDisplayMode(.inline)
            #endif
    }
}
