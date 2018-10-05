//
//  LoginRouter.swift
//  Pytch
//
//  Created by Rinat Enikeev on 04/10/2018.
//  Copyright © 2018 Aparlay Limited. All rights reserved.
//

import LightRoute

enum LoginSegue: String {
    case tabBar = "ShowTabBarViewControllerSegueIdentifier"
}

class LoginRouter: LoginRouterInput {
    weak var transitionHandler: TransitionHandler!
    
    func openTabBar() {
        try! transitionHandler
            .forSegue(identifier: LoginSegue.tabBar.rawValue, to: TabBarModuleInput.self)
            .perform()
    }
}
