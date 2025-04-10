//
//  TradeVisionNavigationBarModifier.swift
//  TradeVisionUI
//
//  Created by Daniel Caccia on 10/04/25.
//

import SwiftUI

public struct TradeVisionNavigationBarModifier: ViewModifier {
    let title: String
    
    public func body(content: Content) -> some View {
        return content
            .navigationTitle(title)
            #if os(iOS)
            .navigationBarTitleDisplayMode(.inline)
            #endif
    }
}
