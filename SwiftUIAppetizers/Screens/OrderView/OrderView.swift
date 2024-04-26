//
//  OrderView.swift
//  SwiftUIAppetizers
//
//  Created by Ismaïl LP on 31/03/2024.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        ZStack {
            NavigationStack {
                VStack {
                    if order.items.isEmpty {
                        EmptyState(imageName: Image(.emptyOrder), message: "You have no items in your order. Please add an appetizer!")
                    } else {
                        List {
                            ForEach(order.items) { appetizer in
                                AppetizerListCell(appetizer: appetizer)
                            }
                            .onDelete(perform: order.deleteItems)
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
}

#Preview {
    OrderView().environmentObject(Order())
}
