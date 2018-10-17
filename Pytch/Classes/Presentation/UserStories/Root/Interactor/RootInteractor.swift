//
//  RootInteractor.swift
//  Pytch
//
//  Created by Rinat Enikeev on 17/10/2018.
//  Copyright © 2018 Aparlay Limited. All rights reserved.
//

import Foundation

class RootInteractor: RootInteractorInput {
    weak var output: RootInteractorOutput!
    var loginService: LoginService!
    
    func determineScene() {
        if loginService.isLoggedIn {
            output.didDetermine(scene: .tabBar)
        } else {
            output.didDetermine(scene: .login)
        }
    }
}
