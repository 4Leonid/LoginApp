//
//  User.swift
//  LoginApp
//
//  Created by EkaterinaP on 12.03.2022.
//

import Foundation
import UIKit

struct User {
    let login: String
    let password: String
    var persons: Person
    
    static func getStandartUser() -> User {
            User(login: "Leo", password: "1", persons: Person(
            firstName: "Leonid",
            secondName: "Turko",
            imageName: "Swift",
            work: "Programmer",
            age: 37))
    }
}

struct Person {
    let firstName: String
    let secondName: String
    let imageName: String
    let work: String
    let age: Int
    
}
