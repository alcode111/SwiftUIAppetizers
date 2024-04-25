//
//  AppetizerListViewModel.swift
//  SwiftUIAppetizers
//
//  Created by Ismaïl LP on 25/04/2024.
//

import Foundation

final class AppetizerListViewModel: ObservableObject {
    
    @Published var appetizers: [Appetizer] = []
    
    func getAppetizers() {
        NetworkManager.shared.getAppetizers { result in
            DispatchQueue.main.async {
                switch result {
                case .success(let appetizers):
                    self.appetizers = appetizers
                case .failure(let error):
                    print("Error fetching appetizers:", error.localizedDescription)
                }
            }
        }
    }
}
