//
//  RegisterConfigurator.swift
//  Pytch
//
//  Created by Rinat Enikeev on 18/10/2018.
//  Copyright © 2018 Aparlay Limited. All rights reserved.
//

import Foundation

class RegisterConfigurator {
    func configure(view: RegisterViewController) {
        let router = RegisterRouter()
        router.transitionHandler = view
        
        let presenter = RegisterPresenter()
        presenter.view = view
        presenter.router = router
        
        let interactor = RegisterInteractor()
        interactor.output = presenter
        
        presenter.interactor = interactor
        
        view.output = presenter
    }
}
