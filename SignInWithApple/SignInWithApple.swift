//
//  SignInWithApple.swift
//  SignInWithApple
//
//  Created by Iven Prillwitz on 22.10.19.
//  Copyright © 2019 Iven Prillwitz. All rights reserved.
//

import SwiftUI
import AuthenticationServices

final class SignInWithApple: UIViewRepresentable {
    
    func makeUIView(context: Context) -> ASAuthorizationAppleIDButton {
        return ASAuthorizationAppleIDButton()
    }
    
    func updateUIView(_ uiView: ASAuthorizationAppleIDButton, context: Context) {
    }
}
