//
//  RegistrationView.swift
//  Missanger
//
//  Created by Alexey Larionov on 15.01.2024.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var fullname = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack{
            Spacer()
            
            Image("messanger-icon")
                .resizable()
                .scaledToFit()
            //.aspectRatio(contentMode: .fit)
                .shadow(radius: 5, x: 5, y: 5)
                .frame(width: 150, height: 150)
                .padding()
            
            VStack(spacing: 12) {
                TextField("Enter you image", text: $email)
                    .font(.headline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal, 24)                
                TextField("Enter you fullname", text: $fullname)
                    .font(.headline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal, 24)
                SecureField("Enter you password", text: $password)
                    .font(.headline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal, 24)
            }
            
            Button {
                print("Handel login")
            } label: {
                Text("Sign Up")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width: 360, height: 44)
                    .background(Color(.systemBlue))
                    .cornerRadius(10)
            }
            .padding(.vertical)
            
            Spacer()
            
            Divider()
            
            Button {
                dismiss()
            } label: {
                HStack{
                    Text("Alredy have an account?")
                    Text("Sign In")
                        .fontWeight(.semibold)
                }
                .font(.footnote)
            }
            .padding(.vertical)
        }
    }
}

#Preview {
    RegistrationView()
}
