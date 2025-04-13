//
//  TradeVisionShimmeringModifier.swift
//  TradeVisionUI
//
//  Created by Daniel Caccia on 13/04/25.
//

import SwiftUI

struct TradeVisionShimmeringModifier: ViewModifier {
    @Environment(\.colorScheme) private var systemScheme
    @Environment(\.tradeVisionColorScheme) private var userPreference
    
    @State private var offset: CGFloat = -1.0
    
    var isActive: Bool
    
    func body(content: Content) -> some View {
        let theme = TradeVisionTheme.current(for: systemScheme, preference: userPreference)
        let color = theme.cardBackground
        
        content
            .overlay(
                Group {
                    if isActive {
                        LinearGradient(
                            gradient: Gradient(
                                colors: [
                                    color.opacity(0.4),
                                    color.opacity(0.6),
                                    color.opacity(0.4)
                                ]
                            ),
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        )
                        .rotationEffect(.degrees(30))
                        .offset(x: offset, y: 0)
                        .mask(content)
                        .animation(
                            Animation.linear(duration: 1.2).repeatForever(autoreverses: false),
                            value: offset
                        )
                    }
                }
            )
            .redacted(reason: isActive ? .placeholder : [])
            .onAppear {
                self.offset = 1.5
            }
    }
}
