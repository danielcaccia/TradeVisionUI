//
//  TradeVisionLabelWithIcon.swift
//  TradeVisionUI
//
//  Created by Daniel Caccia on 10/04/25.
//

import SwiftUI

public struct TradeVisionLabelWithIcon: View {
    @Environment(\.colorScheme) private var systemScheme
    @Environment(\.tradeVisionColorScheme) private var userPreference
    
    let text: String
    let type: TradeVisionLabelType
    let image: Image
    let position: ImagePosition
    let iconColor: IconColor
    
    public init(_ text: String, type: TradeVisionLabelType, image: Image, position: ImagePosition = .left, iconColor: IconColor) {
        self.text = text
        self.type = type
        self.image = image
        self.position = position
        self.iconColor = iconColor
    }
    
    public var body: some View {
        let theme = TradeVisionTheme.current(for: systemScheme, preference: userPreference)
        
        switch position {
        case .top:
            TradeVisionVStack(alignment: .center, spacing: TradeVisionSpacing.xs) {
                image
                    .foregroundColor(iconColor.color(for: theme))
                
                Text(text)
                    .font(type.font)
                    .foregroundColor(type.labelColor(for: theme))
                    .padding()
                    .cornerRadius(TradeVisionCornerRadius.standard)
            }
        case .left:
            TradeVisionHStack(alignment: .center, spacing: TradeVisionSpacing.xs) {
                image
                    .foregroundColor(iconColor.color(for: theme))
                
                Text(text)
                    .multilineTextAlignment(.leading)
                    .font(type.font)
                    .foregroundColor(type.labelColor(for: theme))
                    .padding()
                    .cornerRadius(TradeVisionCornerRadius.standard)
                
                Spacer()
            }
        case .bottom:
            TradeVisionVStack(alignment: .center, spacing: TradeVisionSpacing.xs) {
                Text(text)
                    .font(type.font)
                    .foregroundColor(type.labelColor(for: theme))
                    .padding()
                    .cornerRadius(TradeVisionCornerRadius.standard)
                
                image
                    .foregroundColor(iconColor.color(for: theme))
            }
        case .right:
            TradeVisionHStack(alignment: .center, spacing: TradeVisionSpacing.xs) {
                Spacer()
                
                Text(text)
                    .multilineTextAlignment(.trailing)
                    .font(type.font)
                    .foregroundColor(type.labelColor(for: theme))
                    .padding()
                    .cornerRadius(TradeVisionCornerRadius.standard)
                
                image
                    .foregroundColor(iconColor.color(for: theme))
            }
        }
    }
}
