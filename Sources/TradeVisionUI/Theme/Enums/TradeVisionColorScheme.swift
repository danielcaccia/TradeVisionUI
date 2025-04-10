//
//  TradeVisionColorScheme.swift
//  TradeVisionUI
//
//  Created by Daniel Caccia on 08/04/25.
//

import SwiftUI

public enum TradeVisionColorScheme: String, Identifiable, CaseIterable, Codable, Sendable {
    case system
    case light
    case dark
    
    public var id: String { self.rawValue }
    
    public var displayName: String {
        switch self {
        case .system: return "Sistema"
        case .light: return "Light Mode"
        case .dark: return "Dark Mode"
        }
    }
    
    public func toColorScheme() -> ColorScheme? {
        switch self {
        case .system: return nil
        case .light: return .light
        case .dark: return .dark
        }
    }
}
