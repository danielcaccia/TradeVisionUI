//
//  TradeVisionLabelWithImage.swift
//  TradeVisionUI
//
//  Created by Daniel Caccia on 09/04/25.
//

import SwiftUI

public struct TradeVisionLabelWithImage: View {
    @Environment(\.colorScheme) private var systemScheme
    @Environment(\.tradeVisionColorScheme) private var userPreference
    
    let text: String
    let type: TradeVisionLabelType
    let image: Image
    let position: ImagePosition
    
    public init(_ text: String, type: TradeVisionLabelType, image: Image, position: ImagePosition = .left) {
        self.text = text
        self.type = type
        self.image = image
        self.position = position
    }
    
    public var body: some View {
        let theme = TradeVisionTheme.current(for: systemScheme, preference: userPreference)
        
        switch position {
        case .top:
            TradeVisionVStack(alignment: .center, spacing: TradeVisionSpacing.xs) {
                image
                
                Text(text)
                    .font(type.font)
                    .foregroundColor(type.labelColor(for: theme))
                    .padding()
                    .cornerRadius(TradeVisionCornerRadius.standard)
            }
        case .left:
            TradeVisionHStack(alignment: .center, spacing: TradeVisionSpacing.xs) {
                image
                
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
            }
        }
    }
}
