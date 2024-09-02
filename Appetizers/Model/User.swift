//
//  User.swift
//  Appetizers
//
//  Created by Vika on 13.05.24.
//

import Foundation

struct User: Codable {

    var firstName       = ""
    var lastName        = ""
    var email           = ""
    var birthDate       = Date()
    var extraNapkins    = false
    var frequentRefills = false
    
    internal init(firstName: String = "", lastName: String = "", email: String = "", birthDate: Date = Date(), extraNapkins: Bool = false, frequentRefills: Bool = false) {
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
        self.birthDate = birthDate
        self.extraNapkins = extraNapkins
        self.frequentRefills = frequentRefills
    }
}
