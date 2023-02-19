//
//  User.swift
//  LoginApp
//
//  Created by Anton Kuzmin on 16.02.2023.
//

import Foundation

struct User {
    let login: String
    let password: String
    let person: Person
}

struct Person {
    let name: String
    let surname: String
    let company: String
    let job: String
}

enum Social: String {
    case telegram = "https://telegram.org"
    case habrCareer = "https://career.habr.com"
}
