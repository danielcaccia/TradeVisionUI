//
//  DarkTheme.swift
//  TradeVisionUI
//
//  Created by Daniel Caccia on 08/04/25.
//

import SwiftUI

public struct DarkTheme: Theme {
    public let primaryText = Color(hex: "FFFFFD")
    public let secondaryText = Color(hex: "BCD5E7")
    public let buttonText = Color(hex: "AADCFA")
    
    public let primaryBackground = Color(hex: "101622")
    public let secondaryBackground = Color(hex: "282D39")
    public let cardBackground = Color(hex: "1E2733")
    
    public let icon = Color(hex: "A7B1C5")
    public let divider = Color(hex: "97A1B4")
    
    public let accent = Color(hex: "224598")
    
    public let success = Color(hex: "8BEE9C")
    public let error = Color(hex: "F63E4D")
    
    public let shadowColor = Color.black.opacity(0.4)
}
