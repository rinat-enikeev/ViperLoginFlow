//
//  SettingsPresenter.swift
//  Pytch
//
//  Created by Rinat Enikeev on 05/10/2018.
//  Copyright © 2018 Aparlay Limited. All rights reserved.
//

import Foundation

class SettingsPresenter: SettingsModuleInput {
    weak var view: SettingsViewInput!
    var router: SettingsRouterInput!
    var interactor: SettingsInteractorInput!
}

extension SettingsPresenter: SettingsViewOutput {
    func logout() {
        interactor.logout()
    }
}

extension SettingsPresenter: SettingsInteractorOutput {
    func didLogout() {
        router.openLogin()
    }
}
