//
//   ProfileStore.swift
//  Letterly
//
//  Created by Ahmad Arif on 21.11.25.
//

import Foundation

final class ProfileStore: ObservableObject {
    @Published var profile: UserProfile = UserProfile()
    
    func save() {
        // später speichern (UserDefaults / Datei)
        print("Profil gespeichert: \(profile)")
    }
}
