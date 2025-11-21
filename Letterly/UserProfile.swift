//
//  UserProfile.swift
//  Letterly
//
//  Created by Ahmad Arif on 21.11.25.
//

import Foundation

struct UserProfile: Codable {
    // Persönliche Daten
    var firstName: String = ""
    var lastName: String = ""
    var email: String = ""
    var phone: String = ""
    var street: String = ""
    var postalCode: String = ""
    var city: String = ""
    
    // Berufliches Profil
    var jobTitle: String = ""
    var aboutMe: String = ""
    var experience: String = ""
    var skills: String = ""
    
    // Bewerbungsbezogene Daten
    var availability: String = ""
    var salaryExpectation: String = "" 
}
