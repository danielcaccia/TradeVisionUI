//
//  TradeVisionSettingsButtonModifier.swift
//  TradeVisionUI
//
//  Created by Daniel Caccia on 10/04/25.
//

import SwiftUI

public struct TradeVisionSettingsButtonModifier: ViewModifier {
    let action: () -> Void
    
    public init(action: @escaping () -> Void) {
        self.action = action
    }
    
    public func body(content: Content) -> some View {
        content
            .toolbar {
                #if os(iOS)
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: action) {
                        Image(systemName: "gear")
                    }
                    .buttonStyle(TradeVisionIconButtonStyle())
                }
                #endif
            }
    }
}
