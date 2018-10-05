//
//  LoginRouter.swift
//  Pytch
//
//  Created by Rinat Enikeev on 04/10/2018.
//  Copyright © 2018 Aparlay Limited. All rights reserved.
//

import LightRoute

class LoginRouter: LoginRouterInput {
    weak var transitionHandler: TransitionHandler!
    var rootRouter: RootRouter!
    
    func openRootScene() {
        rootRouter.openRootScene()
    }
}