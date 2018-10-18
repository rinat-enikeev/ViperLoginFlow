//
//  OnboardRouter.swift
//  Pytch
//
//  Created by Rinat Enikeev on 18/10/2018.
//  Copyright © 2018 Aparlay Limited. All rights reserved.
//

import UIKit

enum OnboardSegue: String {
    case login = "ShowLoginViewControllerSegueIdentifier"
}

class OnboardRouter: OnboardRouterInput {
    weak var transitionHandler: UIViewController!
    
    func openLogin() {
        transitionHandler.performSegue(withIdentifier: OnboardSegue.login.rawValue, sender: nil)
    }
}
