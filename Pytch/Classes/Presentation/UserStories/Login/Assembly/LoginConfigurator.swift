//
//  LoginConfigurator.swift
//  Pytch
//
//  Created by Rinat Enikeev on 04/10/2018.
//  Copyright © 2018 Aparlay Limited. All rights reserved.
//

import Swinject

class LoginConfigurator {
    
    func configure(view: LoginViewController) {
        
        let r = AppAssembly.shared.assembler.resolver
        
        let router = LoginRouter()
        router.transitionHandler = view
        router.rootRouter = r.resolve(RootRouter.self)
        
        let presenter = LoginPresenter()
        presenter.view = view
        presenter.router = router
        
        let interactor = LoginInteractor()
        interactor.output = presenter
        interactor.loginService = r.resolve(LoginService.self)
        
        presenter.interactor = interactor
        
        view.output = presenter
    }
    
}
