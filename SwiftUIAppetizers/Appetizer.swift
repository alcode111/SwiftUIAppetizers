//
//  Appetizer.swift
//  SwiftUIAppetizers
//
//  Created by Ismaïl LP on 31/03/2024.
//

import Foundation

struct Appetizer: Decodable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carb: Int
}

struct AppetizerResponse {
    let request: [Appetizer]
}

struct MockData {
    static let sampleAppetizer = Appetizer(id: 001,
                                          name: "Test Appetizer",
                                          description: "This is the description of my appetizer. It's yummy.",
                                          price: 9.99,
                                          imageURL: "",
                                          calories: 99,
                                          protein: 99,
                                          carb: 99)
    
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
}

