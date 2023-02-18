//
//  User.swift
//  LoginApp
//
//  Created by Anton Kuzmin on 16.02.2023.
//

import Foundation

struct User {
    let login = "User"
    let password = "pass"
    let person: Person
}

struct Person {
    let name = "Anton"
    let surname = "Kuzmin"
    let company = "LANIT"
    let job = "QA Automation Engineer"
}