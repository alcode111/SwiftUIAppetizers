//
//  XDismissButton.swift
//  SwiftUIAppetizers
//
//  Created by Ismaïl LP on 25/04/2024.
//

import SwiftUI

struct XDismissButton: View {
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 30)
                .foregroundStyle(.white.opacity(0.6))
            
            Image(systemName: "xmark")
                .imageScale(.small)
                .frame(width: 44, height: 44)
                .foregroundStyle(.black)
        }
    }
}

#Preview {
    XDismissButton()
}
