//
//  CustomModifiers.swift
//  SwiftUIAppetizers
//
//  Created by Ismaïl LP on 27/04/2024.
//

import SwiftUI

struct StandardButtonStyle: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .buttonStyle(.bordered)
            .controlSize(.large)
            .tint(.accent)
    }
}

struct listCellImageStyle: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .aspectRatio(contentMode: .fit)
            .frame(width: 120, height: 90)
            .clipShape(RoundedRectangle(cornerRadius: 8))
    }
}
