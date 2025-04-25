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
    
    public init(
        _ text: String,
        type: TradeVisionLabelType,
        iconImage: Image,
        position: ImagePosition = .left,
    ) {
        self.text = text
        self.type = type
        self.iconImage = iconImage
        self.position = position
    }
    
    public var body: some View {
        let theme = TradeVisionTheme.current(for: systemScheme, preference: userPreference)
        
        switch position {
        case .top:
            TradeVisionVStack(alignment: .center, spacing: TradeVisionSpacing.xs) {
                iconImage
                    .resizable()
                    .renderingMode(.template)
                    .foregroundColor(theme.icon)
                    .frame(width: ImageType.smallIcon.size.width, height: ImageType.smallIcon.size.height)
                TradeVisionLabel(text, type: type, alignment: .center)
            }
        case .left:
            TradeVisionHStack(alignment: .center, spacing: TradeVisionSpacing.sm) {
                iconImage
                    .resizable()
                    .renderingMode(.template)
                    .foregroundColor(theme.icon)
                    .frame(width: ImageType.smallIcon.size.width, height: ImageType.smallIcon.size.height)
                TradeVisionLabel(text, type: type)
            }
        case .bottom:
            TradeVisionVStack(alignment: .center, spacing: TradeVisionSpacing.xs) {
                TradeVisionLabel(text, type: type, alignment: .center)
                iconImage
                    .resizable()
                    .renderingMode(.template)
                    .foregroundColor(theme.icon)
                    .frame(width: ImageType.smallIcon.size.width, height: ImageType.smallIcon.size.height)
            }
        case .right:
            TradeVisionHStack(alignment: .center, spacing: TradeVisionSpacing.sm) {
                TradeVisionLabel(text, type: type, alignment: .trailing)
                iconImage
                    .resizable()
                    .renderingMode(.template)
                    .foregroundColor(theme.icon)
                    .frame(width: ImageType.smallIcon.size.width, height: ImageType.smallIcon.size.height)
            }
        }
    }
}
