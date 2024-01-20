//
//  ProfileView.swift
//  Missanger
//
//  Created by Alexey Larionov on 19.01.2024.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            Image(systemName: "person.circle.fill")
                .resizable()
                .foregroundColor(Color(.systemGray4))
                .frame(width: 80, height: 80)
            
            Text("Brus Wayne")
            
            List {
                Section {
                    ForEach(SettingsOptionsViewModel.allCases) { option in
                        HStack {
                            Image(systemName: option.image)
                                .resizable()
                                .frame(width: 24, height: 24)
                                .foregroundColor(Color(.systemPurple))
                            
                            Text(option.title)
                                .font(.subheadline)
                                .fontWeight(.semibold)
                        }
                    }
                }
                
                Section {
                    Button {
                        print("log out")
                    } label: {
                        Text("Log Out")
                    }
                    
                    Button {
                        print("Delete account")
                    } label: {
                        Text("Delete Account")
                    }
                }
                .foregroundColor(.red)
            }
                
        }
    }
}

#Preview {
    ProfileView()
}
