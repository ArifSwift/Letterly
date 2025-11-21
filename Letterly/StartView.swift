//
//  StartView.swift
//  Letterly
//
//  Created by Ahmad Arif on 21.11.25.
//

import SwiftUI

struct StartView: View {
    @EnvironmentObject var profileStore: ProfileStore
    var hasProfile: Bool {
            
            let p = profileStore.profile
            return !p.firstName.trimmingCharacters(in: .whitespaces).isEmpty ||
                   !p.lastName.trimmingCharacters(in: .whitespaces).isEmpty
        }
    var body: some View {
        VStack(spacing: 24) {
            
            Text("Letterly")
                .font(.largeTitle.bold())
                .padding(.top, 40)
            
            Text("Erstelle professionelle Bewerbungsanschreiben schnell und einfach.")
                .font(.body)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            
           
            NavigationLink {
                ProfileView()
            } label: {
                Text(hasProfile ? "Profil bearbeiten" : "Profil erstellen")
                                   .frame(maxWidth: .infinity)
                                   .padding()
                                   .background(Color.accentColor)
                                   .foregroundColor(.white)
                                   .cornerRadius(12)
            }
            .padding(.horizontal)
            
         
            NavigationLink {
                Text("Hier kommt später der JobLinkView.")
            } label: {
                Text("Neues Anschreiben erstellen")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color(.systemGray5))
                    .foregroundColor(.primary)
                    .cornerRadius(12)
            }
            .padding(.horizontal)
            
            Spacer()
        }
       
    }
}

#Preview {
    NavigationStack {
        StartView()
            .environmentObject(ProfileStore())
    }
}
