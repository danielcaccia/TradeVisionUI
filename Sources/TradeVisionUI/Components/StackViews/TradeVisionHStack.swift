//
//  TradeVisionHStack.swift
//  TradeVisionUI
//
//  Created by Daniel Caccia on 09/04/25.
//

import SwiftUI

public struct TradeVisionHStack<Content: View>: View {
    private let alignment: VerticalAlignment
    private let spacing: CGFloat
    private let content: () -> Content

    public init(
        alignment: VerticalAlignment = .center,
        spacing: CGFloat = TradeVisionSpacing.lg,
        @ViewBuilder content: @escaping () -> Content
    ) {
        self.alignment = alignment
        self.spacing = spacing
        self.content = content
    }

    public var body: some View {
        HStack(alignment: alignment, spacing: spacing, content: content)
    }
}
