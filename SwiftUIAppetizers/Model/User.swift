//
//  User.swift
//  SwiftUIAppetizers
//
//  Created by Ismaïl LP on 26/04/2024.
//

import Foundation

struct User: Codable {
    var firstName = ""
    var lastName = ""
    var email = ""
    var birthdate = Date()
    var extraNapkins = false
    var frequentRefills = false
}
