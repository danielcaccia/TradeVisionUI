//
//  TradeVisionCancelButtonModifier.swift
//  TradeVisionUI
//
//  Created by Daniel Caccia on 16/04/25.
//

import SwiftUI

struct TradeVisionCancelButtonModifier: ViewModifier {
    @Environment(\.dismiss) var dismiss
    
    func body(content: Content) -> some View {
        content
            .toolbar {
                #if os(iOS)
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Cancel") {
                        dismiss()
                    }
                }
                #endif
            }
    }
}
