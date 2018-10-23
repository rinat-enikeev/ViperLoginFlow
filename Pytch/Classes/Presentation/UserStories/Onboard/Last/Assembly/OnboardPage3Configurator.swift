//
//  OnboardLastConfigurator.swift
//  Pytch
//
//  Created by Rinat Enikeev on 23/10/2018.
//  Copyright © 2018 Aparlay Limited. All rights reserved.
//

import Foundation

class OnboardLastConfigurator {
    func configure(view: OnboardLastViewController) {
        let presenter = OnboardLastPresenter()
        presenter.view = view
        presenter.rootRouter = RootRouter.shared
        view.output = presenter
    }
}
