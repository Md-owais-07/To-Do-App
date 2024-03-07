//
//  User.swift
//  To-Do-App
//
//  Created by codilar on 01/03/24.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
