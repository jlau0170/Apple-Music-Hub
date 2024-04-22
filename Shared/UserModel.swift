//
//  UserModel.swift
//  Museic
//
//  Created by Justin Lau on 2024-04-21.
//

import Foundation

class User: ObservableObject {
    @Published var firstName = ""
    @Published var lastName = ""
    @Published var isAuthorized = false
    
    init(firstName: String, lastName: String, isAuthorized: Bool) {
        self.firstName = firstName
        self.lastName = lastName
        self.isAuthorized = isAuthorized
    }
}
