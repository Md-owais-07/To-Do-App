////
////  FaceUthViewViewModel.swift
////  To-Do-App
////
////  Created by Mohammad Owais on 07/03/24.
////
//
//import Foundation
//import LocalAuthentication
//
//class FaceUthViewViewModel: ObservableObject {
//    @Published var isUnlocked = false
//    @Published var isShowingAlert = false
//    @Published var alertMessage = ""
//    
//    init(isUnlocked: Bool = false, isShowingAlert: Bool = false, alertMessage: String = "") {
//        self.isUnlocked = isUnlocked
//        self.isShowingAlert = isShowingAlert
//        self.alertMessage = alertMessage
//    }
//    
//    func authenticate() {
//        let context = LAContext()
//        var error: NSError?
//
//        if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) {
//            let reason = "Authenticate to unlock the app"
//            context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: reason) { success, authenticationError in
//                DispatchQueue.main.async {
//                    if success {
//                        self.isUnlocked = true
//                    } else {
//                        self.isShowingAlert = true
//                        self.alertMessage = authenticationError?.localizedDescription ?? "Unknown error"
//                    }
//                }
//            }
//        } else {
//            isShowingAlert = true
//            alertMessage = error?.localizedDescription ?? "Biometric authentication not available"
//        }
//    }
//    
//}
