////
////  FaceAuthView.swift
////  To-Do-App
////
////  Created by codilar on 04/03/24.
////
//
//import SwiftUI
//import LocalAuthentication
//
//struct FaceAuthView: View {
//    
//    @StateObject var viewmodel = FaceUthViewViewModel()
//
//    var body: some View {
//        NavigationStack {
//            if viewmodel.isUnlocked {
//                LoginView()
//                    .navigationBarBackButtonHidden(true)
//            } else {
//                Button(action: {
//                    viewmodel.authenticate()
//                }) {
//                    Image(systemName: "faceid")
//                        .resizable()
//                        .frame(width: 40, height: 40)
//                }
//                .alert(isPresented: $viewmodel.isShowingAlert) {
//                    Alert(title: Text("Authentication Failed"), message: Text(viewmodel.alertMessage), dismissButton: .default(Text("OK")))
//                }
//            }
//        }
//    }
////    func authenticate() {
////        let context = LAContext()
////        var error: NSError?
////
////        if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) {
////            let reason = "Authenticate to unlock the app"
////            context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: reason) { success, authenticationError in
////                DispatchQueue.main.async {
////                    if success {
////                        isUnlocked = true
////                    } else {
////                        isShowingAlert = true
////                        alertMessage = authenticationError?.localizedDescription ?? "Unknown error"
////                    }
////                }
////            }
////        } else {
////            isShowingAlert = true
////            alertMessage = error?.localizedDescription ?? "Biometric authentication not available"
////        }
////    }
//}
//
//#Preview {
//    FaceAuthView()
//}
