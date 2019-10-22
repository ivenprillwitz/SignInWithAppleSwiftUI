//
//  SignInWithAppleDelegates.swift
//  SignInWithApple
//
//  Created by Iven Prillwitz on 22.10.19.
//  Copyright © 2019 Iven Prillwitz. All rights reserved.
//

import Foundation
import AuthenticationServices

class SignInWithAppleDelegate: NSObject {
  private let signInSucceeded: (Bool) -> Void
  
  init(onSignedIn: @escaping (Bool) -> Void) {
    self.signInSucceeded = onSignedIn
  }
}

extension SignInWithAppleDelegate: ASAuthorizationControllerDelegate {
      func authorizationController(controller: ASAuthorizationController, didCompleteWithAuthorization authorization: ASAuthorization) {
        // Handle success
      }
      
      func authorizationController(controller: ASAuthorizationController, didCompleteWithError error: Error) {
        // Handle error.
      }
}

extension SignInWithAppleDelegate: ASAuthorizationControllerPresentationContextProviding {
  func presentationAnchor(for controller: ASAuthorizationController) -> ASPresentationAnchor {
        return UIWindow()
    }
}
