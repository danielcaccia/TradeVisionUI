//
//  LightTheme.swift
//  TradeVisionUI
//
//  Created by Daniel Caccia on 08/04/25.
//

import SwiftUI

public struct LightTheme: Theme {
    public let primaryText = Color(hex: "0E1620")
    public let secondaryText = Color(hex: "474D5F")
    public let buttonText = Color(hex: "FFFFFD")
    
    public let primaryBackground = Color(hex: "FAFAFA")
    public let secondaryBackground = Color(hex: "ECECED")
    public let cardBackground = Color(hex: "FFFFFD")
    
    public let icon = Color(hex: "0E1620")
    public let divider = Color(hex: "D1D6DE")
    
    public let accent = Color(hex: "94C9FA")
    
    public let success = Color(hex: "529976")
    public let error = Color(hex: "D8212A")
    
    public let shadowColor = Color.black.opacity(0.1)
}
