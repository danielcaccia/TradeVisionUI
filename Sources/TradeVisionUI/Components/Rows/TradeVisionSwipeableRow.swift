//
//  TradeVisionSwipeableRow.swift
//  TradeVisionUI
//
//  Created by Daniel Caccia on 19/04/25.
//

import SwiftUI

public struct TradeVisionSwipeableRow<Content: View>: View {
    @Environment(\.colorScheme) private var systemScheme
    @Environment(\.tradeVisionColorScheme) private var userPreference
    
    @State private var offset: CGFloat = 0
    @State private var dragTranslation: CGSize = .zero
    @State private var isHorizontalDrag: Bool? = nil
    @State private var deleted = false
    
    @GestureState private var isDragging = false
    
    let onDelete: () -> Void
    let onTap: () -> Void
    let content: () -> Content
    
    public init(
        onDelete: @escaping () -> Void,
        onTap: @escaping () -> Void = {},
        @ViewBuilder content: @escaping () -> Content
    ) {
        self.onDelete = onDelete
        self.onTap = onTap
        self.content = content
    }
    
    public var body: some View {
        ZStack(alignment: .trailing) {
            let theme = TradeVisionTheme.current(for: systemScheme, preference: userPreference)
            
            TradeVisionHStack {
                Spacer()
                    .frame(maxWidth: .infinity)
                Button(role: .destructive, action: onDelete) {
                    Image(systemName: "trash")
                        .frame(width: 28, height: 28)
                        .foregroundColor(theme.buttonText)
                        .background(theme.error)
                }
                .padding(.trailing, TradeVisionSpacing.xl)
            }
            .frame(maxHeight: .infinity)
            .background(theme.error)
            
            content()
                .padding(TradeVisionSpacing.md)
                .background(theme.cardBackground)
                .contentShape(Rectangle())
                .offset(x: offset)
                .simultaneousGesture(
                    DragGesture(minimumDistance: 10)
                        .onChanged { value in
                            if isHorizontalDrag == nil {
                                let horizontal = abs(value.translation.width)
                                let vertical = abs(value.translation.height)
                                isHorizontalDrag = horizontal > vertical
                            }
                            
                            guard isHorizontalDrag == true else { return }
                            
                            offset = min(0, value.translation.width)
                        }
                        .onEnded { value in
                            guard isHorizontalDrag == true else {
                                isHorizontalDrag = nil
                                return
                            }
                            
                            if value.translation.width < -220 {
                                withAnimation {
                                    offset = -300
                                    deleted = true
                                }
                                DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                                    onDelete()
                                }
                            } else if value.translation.width < -72 {
                                withAnimation {
                                    offset = -72
                                }
                            } else {
                                withAnimation {
                                    offset = 0
                                }
                            }
                            
                            isHorizontalDrag = nil
                        }
                )
                .highPriorityGesture(
                    TapGesture()
                        .onEnded {
                            if abs(offset) < 10 {
                                onTap()
                            }
                        }
                )
                .animation(.easeOut, value: offset)
                .opacity(deleted ? 0 : 1)
        }
    }
}
