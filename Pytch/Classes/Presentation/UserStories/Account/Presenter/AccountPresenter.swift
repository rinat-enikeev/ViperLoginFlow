//
//  AccountPresenter.swift
//  Pytch
//
//  Created by Rinat Enikeev on 18/10/2018.
//  Copyright © 2018 Aparlay Limited. All rights reserved.
//

import Foundation

class AccountPresenter: AccountModuleInput {
    weak var view: AccountViewInput!
    var router: AccountRouterInput!
    var interactor: AccountInteractorInput!
}

extension AccountPresenter: AccountViewOutput {
    func didSelectLogout() {
        interactor.logout()
    }
}

extension AccountPresenter: AccountInteractorOutput {
    func didLogout() {
        router.openLogin()
    }
}
