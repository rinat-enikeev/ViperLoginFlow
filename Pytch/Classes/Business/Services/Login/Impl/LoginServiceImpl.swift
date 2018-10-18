//
//  LoginServiceImpl.swift
//  Pytch
//
//  Created by Rinat Enikeev on 04/10/2018.
//  Copyright © 2018 Aparlay Limited. All rights reserved.
//

import Foundation

class LoginServiceImpl: LoginService {
    
    static let shared = LoginServiceImpl()
    
    var isLoggedIn = false
    
    func login() {
        isLoggedIn = true
    }
    
    func logout() {
        isLoggedIn = false
    }
}
