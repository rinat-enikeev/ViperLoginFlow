//
//  SettingsRouter.swift
//  Pytch
//
//  Created by Rinat Enikeev on 05/10/2018.
//  Copyright © 2018 Aparlay Limited. All rights reserved.
//

import LightRoute

class SettingsRouter: SettingsRouterInput {
    weak var transitionHandler: TransitionHandler!
    var rootRouter: RootRouter!
    
    func openLogin() {
        rootRouter.openLogin()
    }
}
