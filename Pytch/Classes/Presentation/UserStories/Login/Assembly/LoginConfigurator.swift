//
//  LoginConfigurator.swift
//  Pytch
//
//  Created by Rinat Enikeev on 04/10/2018.
//  Copyright © 2018 Aparlay Limited. All rights reserved.
//

import Foundation

class LoginConfigurator {
    
    func configure(view: LoginViewController) {
        
        let router = LoginRouter()
        router.transitionHandler = view
        
        let presenter = LoginPresenter()
        presenter.view = view
        presenter.router = router
        
        let interactor = LoginInteractor()
        interactor.output = presenter
        interactor.loginService = LoginServiceImpl.shared
        
        presenter.interactor = interactor
        
        view.output = presenter
    }
    
}
