//
//  TradeVisionBackButtonModifier.swift
//  TradeVisionUI
//
//  Created by Daniel Caccia on 16/04/25.
//

import SwiftUI

struct TradeVisionBackButtonModifier: ViewModifier {
    let backAction: () -> Void
    
    public init(_ backAction: @escaping () -> Void) {
        self.backAction = backAction
    }
    
    func body(content: Content) -> some View {
        content
            .toolbar {
                #if os(iOS)
                ToolbarItem(placement: .topBarLeading) {
                    Button(action: backAction) {
                        Image(systemName: "chevron.left")
                        Text("Back")
                    }
                }
                #endif
            }
    }
}
