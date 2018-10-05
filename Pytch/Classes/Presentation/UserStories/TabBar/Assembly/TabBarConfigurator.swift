//
//  TabBarConfigurator.swift
//  Pytch
//
//  Created by Rinat Enikeev on 04/10/2018.
//  Copyright © 2018 Aparlay Limited. All rights reserved.
//

import Foundation

class TabBarConfigurator {
    func configure(view: TabBarViewController) {
        let router = TabBarRouter()
        router.transitionHandler = view
        
        let presenter = TabBarPresenter()
        presenter.router = router
        presenter.view = view
        
        let interactor = TabBarInteractor()
        interactor.output = presenter
        
        presenter.interactor = interactor
        
        view.output = presenter
    }
}
