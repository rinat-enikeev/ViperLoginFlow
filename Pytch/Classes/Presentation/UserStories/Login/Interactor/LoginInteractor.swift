//
//  LoginInteractor.swift
//  Pytch
//
//  Created by Rinat Enikeev on 04/10/2018.
//  Copyright © 2018 Aparlay Limited. All rights reserved.
//

import Foundation

class LoginInteractor: LoginInteractorInput {
    weak var output: LoginInteractorOutput!
    
    var loginService: LoginService!
    
    var isLoggedIn: Bool { return loginService.isLoggedIn }
    
    func login() {
        loginService.login()
        output.didLogin()
    }
}
