//
//  LoginViewViewModel.swift
//  To-Do-App
//
//  Created by codilar on 01/03/24.
//
import FirebaseAuth
import FirebaseFirestore
import Foundation

class LoginViewViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var errorMsg = ""
    
    init() {
        //
    }
    
    func login() {
        guard validate() else {
            return
        }
//        Try to login
        Auth.auth().signIn(withEmail: email, password: password)
    }
    
    private func validate() -> Bool {
        errorMsg = "login error"
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            errorMsg = "Please fill in thr fields"
            return false
        }
        guard email.contains("@") && email.contains(".") else {
            errorMsg = "Wrong email format"
            return false
        }
        return true
    }
}
