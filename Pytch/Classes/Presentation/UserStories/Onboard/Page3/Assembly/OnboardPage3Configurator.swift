//
//  OnboardPage3Configurator.swift
//  Pytch
//
//  Created by Rinat Enikeev on 23/10/2018.
//  Copyright © 2018 Aparlay Limited. All rights reserved.
//

import Foundation

class OnboardPage3Configurator {
    func configure(view: OnboardPage3ViewController) {
        let presenter = OnboardPage3Presenter()
        presenter.view = view
        presenter.rootRouter = RootRouter.shared
        view.output = presenter
    }
}
