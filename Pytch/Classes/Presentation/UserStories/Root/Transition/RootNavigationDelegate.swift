//
//  RootTransitionDelegate.swift
//  Pytch
//
//  Created by Rinat Enikeev on 22/10/2018.
//  Copyright © 2018 Aparlay Limited. All rights reserved.
//

import UIKit

class RootNavigationDelegate: NSObject, UINavigationControllerDelegate {
    
    func navigationController(_ navigationController: UINavigationController, animationControllerFor operation: UINavigationController.Operation, from fromVC: UIViewController, to toVC: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        if fromVC is TabBarViewController && toVC is LoginViewController && operation == .pop {
            return LoginPopAnimation()
        } else if fromVC is LoginViewController && toVC is TabBarViewController && operation == .push {
            return LoginPushAnimation()
        } else {
            return nil
        }
    }
    
}
