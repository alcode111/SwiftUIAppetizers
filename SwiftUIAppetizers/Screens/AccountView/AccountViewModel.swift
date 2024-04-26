//
//  AccountViewModel.swift
//  SwiftUIAppetizers
//
//  Created by Ismaïl LP on 26/04/2024.
//

import SwiftUI

final class AccountViewModel: ObservableObject {
    
    @Published var firstName = ""
    @Published var lastName = ""
    @Published var email = ""
    @Published var birthdate = Date()
    @Published var extraNapkins = false
    @Published var frequentRefills = false
}


