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
    let iconImage: Image
    let position: ImagePosition
    let iconColor: IconColor?
    
    public init(
        _ text: String,
        type: TradeVisionLabelType,
        iconImage: Image,
        position: ImagePosition = .left,
        iconColor: IconColor? = nil
    ) {
        self.text = text
        self.type = type
        self.iconImage = iconImage
        self.position = position
        self.iconColor = iconColor
    }
    
    public var body: some View {
        let theme = TradeVisionTheme.current(for: systemScheme, preference: userPreference)
        
        switch position {
        case .top:
            TradeVisionVStack(alignment: .center, spacing: TradeVisionSpacing.xs) {
                iconImage.foregroundColor(iconColor?.color(for: theme) ?? theme.iconItem)
                TradeVisionLabel(text, type: type, alignment: .center)
            }
        case .left:
            TradeVisionHStack(alignment: .center, spacing: TradeVisionSpacing.sm) {
                iconImage.foregroundColor(iconColor?.color(for: theme) ?? theme.iconItem)
                TradeVisionLabel(text, type: type)
            }
        case .bottom:
            TradeVisionVStack(alignment: .center, spacing: TradeVisionSpacing.xs) {
                TradeVisionLabel(text, type: type, alignment: .center)
                iconImage.foregroundColor(iconColor?.color(for: theme) ?? theme.iconItem)
            }
        case .right:
            TradeVisionHStack(alignment: .center, spacing: TradeVisionSpacing.sm) {
                TradeVisionLabel(text, type: type, alignment: .trailing)
                iconImage.foregroundColor(iconColor?.color(for: theme) ?? theme.iconItem)
            }
        }
    }
}
