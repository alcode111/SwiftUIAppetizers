//
//  AppetizerDetailView.swift
//  SwiftUIAppetizers
//
//  Created by Ismaïl LP on 25/04/2024.
//

import SwiftUI

struct AppetizerDetailView: View {
    
    let appetizer: Appetizer
    @Binding var isShowingDetail: Bool
    
    var body: some View {
        VStack {
            AppetizerRemonteImage(urlString: appetizer.imageURL)
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 225)
            
            VStack {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Text(appetizer.description)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .padding()
                
                HStack(spacing: 40) {
                    VStack(spacing: 5) {
                        Text("Calories")
                            .bold()
                            .font(.caption)
                        
                        Text("\(appetizer.calories)")
                            .foregroundStyle(.secondary)
                            .fontWeight(.semibold)
                            .italic()
                    }
                    
                    VStack(spacing: 5) {
                        Text("Carbs")
                            .bold()
                            .font(.caption)
                        
                        Text("\(appetizer.carbs)")
                            .foregroundStyle(.secondary)
                            .fontWeight(.semibold)
                            .italic()
                    }
                    
                    VStack(spacing: 5) {
                        Text("Protein")
                            .bold()
                            .font(.caption)
                        
                        Text("\(appetizer.protein)")
                            .foregroundStyle(.secondary)
                            .fontWeight(.semibold)
                            .italic()
                    }
                }
                
                Spacer()
                
                Button {
                    print("tapped")
                } label: {
                    APButton(title: "$\(appetizer.price, specifier: "%.2f") - Add to Order")
                }
                .padding(.bottom, 30)
            }
        }
        .frame(width: 300, height: 525)
        .background(Color(.systemBackground))
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .shadow(radius: 40)
        .overlay(Button {
            isShowingDetail = false
        } label: {
            XDismissButton()
        }, alignment: .topTrailing)
    }
}

#Preview {
    AppetizerDetailView(appetizer: MockData.sampleAppetizer,
                        isShowingDetail: .constant(true))
}
