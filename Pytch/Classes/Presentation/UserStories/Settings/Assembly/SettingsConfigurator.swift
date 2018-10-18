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
        
        let presenter = SettingsPresenter()
        presenter.view = view
        presenter.router = router
        
        let interactor = SettingsInteractor()
        interactor.output = presenter
        
        presenter.interactor = interactor
        
        view.output = presenter
    }
}
