//
//  TradeVisionVStack.swift
//  TradeVisionUI
//
//  Created by Daniel Caccia on 09/04/25.
//

import SwiftUI

public struct TradeVisionVStack<Content: View>: View {
    private let alignment: HorizontalAlignment
    private let spacing: CGFloat
    private let content: () -> Content

    public init(
        alignment: HorizontalAlignment = .center,
        spacing: CGFloat = TradeVisionSpacing.sm,
        @ViewBuilder content: @escaping () -> Content
    ) {
        self.alignment = alignment
        self.spacing = spacing
        self.content = content
    }

    public var body: some View {
        VStack(alignment: alignment, spacing: spacing, content: content)
    }
}
