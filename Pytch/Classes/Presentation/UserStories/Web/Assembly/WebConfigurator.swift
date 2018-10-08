//
//  WebConfigurator.swift
//  Pytch
//
//  Created by Rinat Enikeev on 08/10/2018.
//  Copyright © 2018 Aparlay Limited. All rights reserved.
//

import Foundation

class WebConfigurator {
    func configure(view: WebViewController) {
        let router = WebRouter()
        router.transitionHandler = view
        
        let presenter = WebPresenter()
        presenter.view = view
        presenter.router = router
        
        let interactor = WebInteractor()
        interactor.output = presenter
        
        presenter.interactor = interactor
        
        view.output = presenter
    }
}
