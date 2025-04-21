//
//  TradeVisionBackButtonModifier.swift
//  TradeVisionUI
//
//  Created by Daniel Caccia on 16/04/25.
//

import SwiftUI

struct TradeVisionBackButtonModifier: ViewModifier {
    @Environment(\.colorScheme) private var systemScheme
    @Environment(\.tradeVisionColorScheme) private var userPreference
    
    let backAction: () -> Void
    
    public init(_ backAction: @escaping () -> Void) {
        self.backAction = backAction
    }
    
    func body(content: Content) -> some View {
        let theme = TradeVisionTheme.current(for: systemScheme, preference: userPreference)
        
        content
            .toolbar {
                #if os(iOS)
                ToolbarItem(placement: .topBarLeading) {
                    Button(action: backAction) {
                        Image(systemName: "chevron.left")
                            .foregroundColor(theme.accent)
                        Text("Back")
                            .foregroundColor(theme.accent)
                    }
                }
                #endif
            }
    }
}
