//
//  LoginView.swift
//  To-Do-App
//
//  Created by codilar on 01/03/24.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationStack {
            VStack {
                HeaderView(title: "To Do List",
                           subTitle: "Get things done ✅",
                           Rectangle: 15,
                           background: .cyan)
                Form {
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    TLButtonView(title: "Log In", background: .cyan) {
                        viewModel.login()
                    }
                }
            }
            .offset(y: -20)
            
            VStack {
                Text("New around here?")
                NavigationLink("Create An Account", destination: RegisterView()
                    .navigationBarBackButtonHidden(true)
                )
            }
        }
    }
}

#Preview {
LoginView()
}
