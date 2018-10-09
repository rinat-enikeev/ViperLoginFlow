//
//  SettingsConfigurator.swift
//  Pytch
//
//  Created by Rinat Enikeev on 05/10/2018.
//  Copyright © 2018 Aparlay Limited. All rights reserved.
//

import Foundation

class SettingsConfigurator {
    func configure(view: SettingsViewController) {
        
        let router = SettingsRouter()
        router.transitionHandler = view
        router.rootRouter = RootRouterImpl.shared
        
        let presenter = SettingsPresenter()
        presenter.view = view
        presenter.router = router
        
        let interactor = SettingsInteractor()
        interactor.output = presenter
        interactor.loginService = LoginServiceImpl.shared
        
        presenter.interactor = interactor
        
        view.output = presenter
    }
}
