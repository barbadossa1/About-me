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
            aboutDescription: """
            Hi! My name is Vadim. For the last 6 years I have been working in a large e-commerce company as a project manager. He worked mainly with large Western companies. Participated in the development of 7 branded online stores and supported them. Now it's time to switch to development!
            """,
            hobbyDescription: """
            I continue to help companies create businesses in the field of e-commerce, but most of the time I am engaged in teaching the Swift programming language.
            """,
            image: "myPhoto",
            image: "swift-og 1",
            image: "XCode-icon 1"
        )
    }
}


