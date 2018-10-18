//
//  RegisterRouter.swift
//  Pytch
//
//  Created by Rinat Enikeev on 18/10/2018.
//  Copyright © 2018 Aparlay Limited. All rights reserved.
//

import UIKit

enum RegisterSegue: String {
    case tabBar = "ShowTabBarViewControllerSegueIdentifier"
}

class RegisterRouter: RegisterRouterInput {
    weak var transitionHandler: UIViewController!
    
    func openTabBar() {
        transitionHandler.performSegue(withIdentifier: RegisterSegue.tabBar.rawValue, sender: nil)
    }
}
