//
//  TradeVisionImage.swift
//  TradeVisionUI
//
//  Created by Daniel Caccia on 11/04/25.
//

import SwiftUI

public struct TradeVisionImage: View {
    @Environment(\.colorScheme) private var systemScheme
    @Environment(\.tradeVisionColorScheme) private var userPreference

    let image: Image
    let type: ImageType
    
    public init(_ image: Image, type: ImageType) {
        self.image = image
        self.type = type
    }

    public var body: some View {
        image
            .resizable()
            .frame(width: type.size.width, height: type.size.height)
            .scaledToFit()
    }
}
