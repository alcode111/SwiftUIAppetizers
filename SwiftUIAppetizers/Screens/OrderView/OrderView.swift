//
//  OrderView.swift
//  SwiftUIAppetizers
//
//  Created by Ismaïl LP on 31/03/2024.
//

import SwiftUI

struct OrderView: View {
    
    @State private var orderItems = MockData.orderItems
    
    var body: some View {
        ZStack {
            NavigationStack {
                VStack {
                    if orderItems.isEmpty {
                        EmptyState(imageName: Image(.emptyOrder), message: "You have no times in your order. Please add an appetizer!")
                    } else {
                        List {
                            ForEach(orderItems) { appetizer in
                                AppetizerListCell(appetizer: appetizer)
                            }
                            .onDelete(perform: deleteItems)
                        }
                        .listStyle(PlainListStyle())
                        
                        Button {
                            print("order placed")
                        } label: {
                            APButton(title: "$99.99 - Place Order")
                        }
                        .padding(.bottom, 25)
                    }
                }
                .navigationTitle("📑 Orders")
            }
        }
    }
    
    func deleteItems(at offsets: IndexSet) {
        orderItems.remove(atOffsets: offsets)
    }
}

#Preview {
    OrderView()
}
