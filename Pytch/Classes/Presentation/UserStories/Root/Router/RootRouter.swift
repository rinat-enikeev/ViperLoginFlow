//
//  RootRouter.swift
//  Pytch
//
//  Created by Rinat Enikeev on 17/10/2018.
//  Copyright © 2018 Aparlay Limited. All rights reserved.
//

import UIKit

enum RootSegue: String {
    case login = "PresentLoginViewControllerSegueIdentifier"
    case tabBar = "PresentTabBarViewControllerSegueIdentifier"
}

class RootRouter: RootRouterInput {
    weak var transitionHandler: UIViewController!
    
    func openLogin() {
        transitionHandler.performSegue(withIdentifier: RootSegue.login.rawValue, sender: nil)
    }
    
    func openTabBar() {
        transitionHandler.performSegue(withIdentifier: RootSegue.tabBar.rawValue, sender: nil)
    }
}
