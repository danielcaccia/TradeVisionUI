//
//  TradeVisionLabelType.swift
//  TradeVisionUI
//
//  Created by Daniel Caccia on 09/04/25.
//

import SwiftUI

public enum TradeVisionLabelType {
    case header
    case sectionHeader
    case title
    case subtitle
    case positive
    case negative
    
    var font: Font {
        switch self {
        case .header:
            TradeVisionFont.header
        case .sectionHeader:
            TradeVisionFont.sectionHeader
        case .title, .positive, .negative:
            TradeVisionFont.title
        case .subtitle:
            TradeVisionFont.subtitle
        }
    }
    
    func labelColor(for theme: Theme) -> Color {
        switch self {
        case .header, .sectionHeader, .title:
            theme.primaryText
        case .subtitle:
            theme.secondaryText
        case .positive:
            theme.positive
        case .negative:
            theme.negative
        }
    }
}
