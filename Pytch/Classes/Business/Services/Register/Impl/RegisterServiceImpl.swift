//
//  RegisterServiceImpl.swift
//  Pytch
//
//  Created by Rinat Enikeev on 18/10/2018.
//  Copyright © 2018 Aparlay Limited. All rights reserved.
//

import Foundation

class RegisterServiceImpl: RegisterService {
    
    static let shared = RegisterServiceImpl()
    
    var isRegistered = false
    
    func register(email: String, password: String, completion: @escaping (Error?) -> Void) {
        isRegistered = true
        let loginService = LoginServiceImpl.shared
        loginService.isLoggedIn = true
        completion(nil)
    }
}
