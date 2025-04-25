//
//  TradeVisionButton.swift
//  TradeVisionUI
//
//  Created by Daniel Caccia on 12/04/25.
//

import SwiftUI

public struct TradeVisionButton: View {
    let type: TradeVisionButtonType
    let action: () -> Void

    public init(type: TradeVisionButtonType, action: @escaping () -> Void) {
        self.type = type
        self.action = action
    }

    public var body: some View {
        switch type {
        case .primary(let text):
            Button(action: action) {
                TradeVisionLabel(text, type: .title, alignment: .center)
                    .fixedSize()
                    .padding(.vertical, TradeVisionSpacing.sm)
                    .padding(.horizontal, TradeVisionSpacing.lg)
            }
            .buttonStyle(TradeVisionPrimaryButtonStyle())
        case .secondary(let text):
            Button(action: action) {
                TradeVisionLabel(text, type: .title, alignment: .center)
                    .fixedSize()
                    .padding(.vertical, TradeVisionSpacing.xs)
                    .padding(.horizontal, TradeVisionSpacing.md)
            }
            .buttonStyle(TradeVisionSecondaryButtonStyle())
        case .icon(let image):
            Button(action: action) {
                image
            }
            .buttonStyle(TradeVisionIconButtonStyle())
        }
    }
}
