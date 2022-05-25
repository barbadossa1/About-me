//
//  User.swift
//  About me
//
//  Created by VK on 25.05.2022.
//

import Foundation

struct User {
    let login: String
    let password: String
    let person: [Person]
    
    static func getUsers() -> User {
        User(
                login: "Vadim",
                password: "Password",
                person: [
                    Person(name: "Vadim", surname: "Kuznetsov", aboutDescription: "dfvadfva", hobbyDescription: "ghndhndhndhndn")
                ]
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let aboutDescription: String
    let hobbyDescription: String
}
