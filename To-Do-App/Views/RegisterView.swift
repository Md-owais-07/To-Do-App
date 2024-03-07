//
//  RegisterView.swift
//  To-Do-App
//
//  Created by codilar on 01/03/24.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel = RegisterViewViewModel()
    var body: some View {
        NavigationStack {
            VStack {
                HeaderView(title: "Register 📝", 
                           subTitle: "Start organizing todo's",
                           Rectangle: -15,
                           background: .green)
                
                Form {
                    TextField("Name", text: $viewModel.name)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocorrectionDisabled()
                    
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocorrectionDisabled()
                        .autocapitalization(.none)
                    
                    TextField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    TLButtonView(title: "Create Account", background: .green) {
                        viewModel.register()
                    }
                    .padding()
                }
                .offset(y: -20)
                VStack {
                    Text("Already have account!")
                    NavigationLink("LogIn here", destination: LoginView()
                        .navigationBarBackButtonHidden(true))
                }
            }
        }
        Spacer()
    }
}

#Preview {
    RegisterView()
}
