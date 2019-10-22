//
//  ContentView.swift
//  SignInWithApple
//
//  Created by Iven Prillwitz on 22.10.19.
//  Copyright © 2019 Iven Prillwitz. All rights reserved.
//

import SwiftUI
import AuthenticationServices

struct ContentView: View {
    
    @State var signInWithAppleDelegate: SignInWithAppleDelegate! = nil
    
     private func ShowSignInWithApple() {
       let request = ASAuthorizationAppleIDProvider().createRequest()
       request.requestedScopes = [.fullName,
                                  .email]

       performSignIn(using: [request])
     }
     private func performSignIn(using requests: [ASAuthorizationRequest]) {
       signInWithAppleDelegate = SignInWithAppleDelegate { success in
         if success {
           // update UI
         } else {
           // show the user an error
         }
       }

       let controller = ASAuthorizationController(authorizationRequests: requests)
       controller.delegate = signInWithAppleDelegate
       controller.presentationContextProvider = signInWithAppleDelegate

       controller.performRequests()
     }
    
    var body: some View {
        SignInWithApple()
            .onTapGesture(perform: ShowSignInWithApple)
            .frame(width: 280, height: 60)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
