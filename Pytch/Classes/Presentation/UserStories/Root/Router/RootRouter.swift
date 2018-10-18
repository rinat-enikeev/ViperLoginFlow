//
//  RootRouter.swift
//  Pytch
//
//  Created by Rinat Enikeev on 04/10/2018.
//  Copyright © 2018 Aparlay Limited. All rights reserved.
//

import UIKit

class RootRouter: RootRouterInput {
    
    static let shared = RootRouter()
    
    weak var navigationController: UINavigationController!
    
    func unwindToLogin() {
        if let presented = navigationController.topViewController?.presentedViewController {
            presented.dismiss(animated: true) {
                for viewController in self.navigationController.viewControllers {
                    if viewController is LoginViewController {
                        self.navigationController.popToViewController(viewController, animated: true)
                    }
                }
            }
        } else {
            for viewController in navigationController.viewControllers {
                if viewController is LoginViewController {
                    navigationController.popToViewController(viewController, animated: true)
                }
            }
        }
    }
    
    func openTabBar() {
        assert(navigationController.topViewController is LoginViewController)
        navigationController.topViewController?.performSegue(withIdentifier: LoginSegue.tabBar.rawValue, sender: nil)
    }
    
    func skipOnboarding() {
        assert(navigationController.topViewController is OnboardViewController)
        navigationController.topViewController?.performSegue(withIdentifier: OnboardSegue.login.rawValue, sender: nil)
    }
}
