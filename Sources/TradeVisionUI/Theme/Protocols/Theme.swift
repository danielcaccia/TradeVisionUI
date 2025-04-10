//
//  Theme.swift
//  TradeVisionUI
//
//  Created by Daniel Caccia on 08/04/25.
//

import SwiftUI

public protocol Theme: Sendable {
    var primaryText: Color { get }
    var secondaryText: Color { get }
    var buttonText: Color { get }
    var primaryBackground: Color { get }
    var secondaryBackground: Color { get }
    var cardBackground: Color { get }
    var divider: Color { get }
    var iconItem: Color { get }
    var primaryBlue: Color { get }
    var secondaryBlue: Color { get }
    var accent: Color { get }
    var success: Color { get }
    var error: Color { get }
    var shadowColor: Color { get }
}
