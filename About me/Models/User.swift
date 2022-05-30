//
//  User.swift
//  About me
//
//  Created by VK on 25.05.2022.
//

import Foundation
import UIKit

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUsers() -> User {
        User(
            login: "Vadim",
            password: "Password",
            person: Person.getPerson()
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let aboutDescription: String
    let hobbyDescription: String
    let image: String
    
    var fullname: String {"\(name) \(surname)"}
    
    static func getPerson() -> Person {
        Person(
            name: "Vadim",
            surname: "Kuznetsov",
            aboutDescription: "ergqergqerg",
            hobbyDescription: "wfbfbwbw",
            image: "myPhoto"
        )
    }
}


