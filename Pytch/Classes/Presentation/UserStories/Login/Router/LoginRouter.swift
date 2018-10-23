//
//  LoginRouter.swift
//  Pytch
//
//  Created by Rinat Enikeev on 04/10/2018.
//  Copyright © 2018 Aparlay Limited. All rights reserved.
//

import UIKit

enum LoginSegue: String {
    case tabBar = "ShowTabBarViewControllerSegueIdentifier"
    case tabBarAnimated = "ShowTabBarViewControllerAnimatedSegueIdentifier"
    case register = "ShowRegisterViewControllerSegueIdentifier"
    case onboard = "ShowOnboardInitialViewControllerSegueIdentifier"
}

class LoginRouter: LoginRouterInput {
    weak var transitionHandler: UIViewController!
    
    func openTabBar() {
        transitionHandler.performSegue(withIdentifier: LoginSegue.tabBarAnimated.rawValue, sender: nil)
    }
    
    func openRegister() {
        transitionHandler.performSegue(withIdentifier: LoginSegue.register.rawValue, sender: nil)
    }
}
