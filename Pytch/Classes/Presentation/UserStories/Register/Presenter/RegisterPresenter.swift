//
//  RegisterPresenter.swift
//  Pytch
//
//  Created by Rinat Enikeev on 18/10/2018.
//  Copyright © 2018 Aparlay Limited. All rights reserved.
//

import Foundation

class RegisterPresenter: RegisterModuleInput {
    weak var view: RegisterViewInput!
    var router: RegisterRouterInput!
    var interactor: RegisterInteractorInput!
}

extension RegisterPresenter: RegisterViewOutput {
    
}

extension RegisterPresenter: RegisterInteractorOutput {
    
}
