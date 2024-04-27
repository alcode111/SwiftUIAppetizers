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
