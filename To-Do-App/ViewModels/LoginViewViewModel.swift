//
//  LoginViewViewModel.swift
//  To-Do-App
//
//  Created by codilar on 01/03/24.
//
import FirebaseAuth
import FirebaseFirestore
import Foundation
import LocalAuthentication

class LoginViewViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var errorMsg = ""
    @Published var isUnlocked = false
    @Published var isShowingAlert = false
    @Published var alertMessage = ""
    
    init() {
        //
    }
    
    func authenticate() {
        let context = LAContext()
        var error: NSError?

        if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) {
            let reason = "Authenticate to unlock the app"
            context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: reason) { success, authenticationError in
                DispatchQueue.main.async {
                    if success {
                        self.isUnlocked = true
                    } else {
                        self.isShowingAlert = true
                        self.alertMessage = authenticationError?.localizedDescription ?? "Unknown error"
                    }
                }
            }
        } else {
            isShowingAlert = true
            alertMessage = error?.localizedDescription ?? "Biometric authentication not available"
        }
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
