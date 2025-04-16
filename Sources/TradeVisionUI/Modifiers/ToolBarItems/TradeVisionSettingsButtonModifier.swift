//
//  TradeVisionSettingsButtonModifier.swift
//  TradeVisionUI
//
//  Created by Daniel Caccia on 10/04/25.
//

import SwiftUI

struct TradeVisionSettingsButtonModifier: ViewModifier {
    let action: () -> Void
    
    public init(action: @escaping () -> Void) {
        self.action = action
    }
    
    func body(content: Content) -> some View {
        content
            .toolbar {
                #if os(iOS)
                ToolbarItem(placement: .topBarTrailing) {
                    TradeVisionButton(type: .icon(Image(systemName: "gear"))) {
                        action()
                    }
                }
                #endif
            }
    }
}
