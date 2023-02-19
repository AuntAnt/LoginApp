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
    
    static func createUser() -> User {
        User(
            login: "User",
            password: "pass",
            person: Person(
                name: "Anton",
                surname: "Kuzmin",
                company: "LANIT",
                job: "QA Automation Engineer",
                socials: [.telegram, .habrCareer]
            )
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let company: String
    let job: String
    let socials: [Social]
}

enum Social: String {
    case telegram = "https://telegram.org"
    case habrCareer = "https://career.habr.com"
}
