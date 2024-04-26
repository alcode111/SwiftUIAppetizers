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
                        EmptyState(imageName: Image(.emptyOrder), message: "You have no times in your order. Please add an appetizer!")
                    } else {
                        List {
                            ForEach(order.items) { appetizer in
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
        order.items.remove(atOffsets: offsets)
    }
}

#Preview {
    OrderView().environmentObject(Order())
}
