//
//  TradeVisionPicker.swift
//  TradeVisionUI
//
//  Created by Daniel Caccia on 22/04/25.
//

import SwiftUI

public struct TradeVisionPicker<Style: PickerStyle, SelectionValue: Hashable, Content: View>: View {
    private let titleKey: LocalizedStringKey
    private let style: Style
    private let selection: Binding<SelectionValue>
    private let content: () -> Content

    public init(
        _ titleKey: LocalizedStringKey = "",
        style: Style = SegmentedPickerStyle(),
        selection: Binding<SelectionValue>,
        @ViewBuilder content: @escaping () -> Content
    ) {
        self.titleKey = titleKey
        self.style = style
        self.selection = selection
        self.content = content
    }

    public var body: some View {
        Picker(titleKey, selection: selection) {
            content()
        }
        .pickerStyle(style)
    }
}
