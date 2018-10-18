//
//  AccountConfigurator.swift
//  Pytch
//
//  Created by Rinat Enikeev on 18/10/2018.
//  Copyright © 2018 Aparlay Limited. All rights reserved.
//

import Foundation

class AccountConfigurator {
    func configure(view: AccountViewController) {
        let router = AccountRouter()
        router.transitionHandler = view
        router.rootRouter = RootRouter.shared
        
        let presenter = AccountPresenter()
        presenter.view = view
        presenter.router = router
        
        let interactor = AccountInteractor()
        interactor.output = presenter
        interactor.loginService = LoginServiceImpl.shared
        
        presenter.interactor = interactor
        
        view.output = presenter
    }
}
