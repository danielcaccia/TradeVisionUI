//
//  DarkTheme.swift
//  TradeVisionUI
//
//  Created by Daniel Caccia on 08/04/25.
//

import SwiftUI

public struct DarkTheme: Theme {
    public let primaryText = Color.white
    public let secondaryText = Color(hex: "A1A1AA")
    public let buttonText = Color.white
    public let primaryBackground = Color(hex: "0C0C0E")
    public let secondaryBackground = Color(hex: "1C1C1E")
    public let cardBackground = Color(hex: "1F1F23")
    public let divider = Color(hex: "2C2C2E")
    public let iconItem = Color.white
    public let primaryBlue = Color(hex: "0A84FF")
    public let secondaryBlue = Color(hex: "5AC8FA")
    public let accent = Color(hex: "32D74B")
    public let success = Color(hex: "32D74B")
    public let error = Color(hex: "FF453A")
    public let shadowColor = Color.black.opacity(0.4)
}
