//
//  RootPresenter.swift
//  Pytch
//
//  Created by Rinat Enikeev on 17/10/2018.
//  Copyright © 2018 Aparlay Limited. All rights reserved.
//

import Foundation

enum RootScene {
    case login
    case tabBar
}

class RootPresenter: RootModuleInput {
    weak var view: RootViewInput!
    var router: RootRouterInput!
    var interactor: RootInteractorInput!
}

extension RootPresenter: RootViewOutput {
    func viewDidAppear() {
        interactor.determineScene()
    }
}

extension RootPresenter: RootInteractorOutput {
    func didDetermine(scene: RootScene) {
        switch scene {
        case .login:
            router.openLogin()
        case .tabBar:
            router.openTabBar()
        }
    }
}
