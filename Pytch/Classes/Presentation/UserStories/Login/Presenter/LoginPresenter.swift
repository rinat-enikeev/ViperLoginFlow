//
//  LoginPresenter.swift
//  Pytch
//
//  Created by Rinat Enikeev on 04/10/2018.
//  Copyright © 2018 Aparlay Limited. All rights reserved.
//

import Foundation

class LoginPresenter: LoginModuleInput {
    weak var view: LoginViewInput!
    var router: LoginRouterInput!
    var interactor: LoginInteractorInput!
}

extension LoginPresenter: LoginViewOutput {
    func login() {
        interactor.login()
    }
}

extension LoginPresenter: LoginInteractorOutput {
    func didLogin() {
        router.openTabBar()
    }
}
