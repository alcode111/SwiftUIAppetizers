//
//  EmptyState.swift
//  SwiftUIAppetizers
//
//  Created by Ismaïl LP on 26/04/2024.
//

import SwiftUI

struct EmptyState: View {
    
    let imageName: Image
    let message: String
    
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea()
            
            VStack {
                imageName
                    .resizable()
                    .scaledToFit()
                    .frame(height: 150)
                
                Text(message)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.secondary)
                    .padding()
            }
            .offset(y: -50)
        }
    }
}

#Preview {
    EmptyState(imageName: Image(.emptyOrder), message: "This is our test message.\n I'm making it a little long for testing.")
}
