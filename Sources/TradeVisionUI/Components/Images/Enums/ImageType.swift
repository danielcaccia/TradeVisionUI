//
//  ImageType.swift
//  TradeVisionUI
//
//  Created by Daniel Caccia on 11/04/25.
//

import SwiftUI

public enum ImageType {
    case headerIcon
    case largeIcon
    case smallIcon
    
    var size: CGSize {
        switch self {
        case .headerIcon:
            CGSize(width: 48, height: 48)
        case .largeIcon:
            CGSize(width: 34, height: 34)
        case .smallIcon:
            CGSize(width: 24, height: 24)
        }
    }
}
