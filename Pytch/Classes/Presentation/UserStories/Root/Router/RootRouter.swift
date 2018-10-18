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
    
    func openLogin() {
        if let presented = navigationController.topViewController?.presentedViewController {
            presented.dismiss(animated: true) {
                self.navigationController.popToRootViewController(animated: true)
            }
        } else {
            navigationController.popToRootViewController(animated: true)
        }
    }
    
    func openTabBar() {
        navigationController.topViewController?.performSegue(withIdentifier: LoginSegue.tabBar.rawValue, sender: nil)
    }
}
