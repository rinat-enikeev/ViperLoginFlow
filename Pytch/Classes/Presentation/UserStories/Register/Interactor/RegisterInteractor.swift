//
//  RegisterInteractor.swift
//  Pytch
//
//  Created by Rinat Enikeev on 18/10/2018.
//  Copyright © 2018 Aparlay Limited. All rights reserved.
//

import Foundation

class RegisterInteractor: RegisterInteractorInput {
    weak var output: RegisterInteractorOutput!
    var registerService: RegisterService!
    
    func register(email: String, password: String) {
        registerService.register(email: email, password: password) { [weak self] (error) in
            if let error = error {
                self?.output.didFailToRegister(with: error)
            } else {
                self?.output.didRegister()
            }
        }
    }
}
