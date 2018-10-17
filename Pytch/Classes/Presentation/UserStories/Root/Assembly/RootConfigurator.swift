//
//  RootConfigurator.swift
//  Pytch
//
//  Created by Rinat Enikeev on 17/10/2018.
//  Copyright © 2018 Aparlay Limited. All rights reserved.
//

import Foundation

class RootConfigurator {
    func configure(view: RootViewController) {
        let router = RootRouter()
        router.transitionHandler = view
        
        let presenter = RootPresenter()
        presenter.router = router
        presenter.view = view
        
        let interactor = RootInteractor()
        interactor.output = presenter
        interactor.loginService = LoginServiceImpl.shared
        
        presenter.interactor = interactor
        
        view.output = presenter
    }
}
