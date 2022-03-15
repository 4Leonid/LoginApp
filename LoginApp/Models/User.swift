//
//  User.swift
//  LoginApp
//
//  Created by EkaterinaP on 12.03.2022.
//

import Foundation

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(
            login: "Leo",
            password: "1",
            person: .getPerson()
        )
    }
}

struct Person {
    let firstName: String
    let secondName: String
    let imageName: String
    let work: String
    let age: Int
    
    var fullName: String {
        "\(firstName) \(secondName)"
    }
    
    static func getPerson() -> Person {
        Person(
            firstName: "Leonid",
            secondName: "Turko",
            imageName: "Swift",
            work: "Programmer",
            age: 37
        )
    }
}

