//
//  OnboardConfigurator.swift
//  Pytch
//
//  Created by Rinat Enikeev on 18/10/2018.
//  Copyright © 2018 Aparlay Limited. All rights reserved.
//

import Foundation

class OnboardConfigurator {
    func configure(view: OnboardViewController) {
        let router = OnboardRouter()
        router.transitionHandler = view
        
        let presenter = OnboardPresenter()
        presenter.view = view
        presenter.router = router
        
        let interactor = OnboardInteractor()
        interactor.output = presenter
        
        presenter.interactor = interactor
        
        view.output = presenter
    }
}
