//
//  SettingsConfigurator.swift
//  Pytch
//
//  Created by Rinat Enikeev on 05/10/2018.
//  Copyright © 2018 Aparlay Limited. All rights reserved.
//

import Swinject

class SettingsConfigurator {
    func configure(view: SettingsViewController) {
        
        let r = AppAssembly.shared.assembler.resolver
        
        let router = SettingsRouter()
        router.transitionHandler = view
        router.rootRouter = r.resolve(RootRouter.self)
        
        let presenter = SettingsPresenter()
        presenter.view = view
        presenter.router = router
        
        let interactor = SettingsInteractor()
        interactor.output = presenter
        interactor.loginService = r.resolve(LoginService.self)
        
        presenter.interactor = interactor
        
        view.output = presenter
    }
}
