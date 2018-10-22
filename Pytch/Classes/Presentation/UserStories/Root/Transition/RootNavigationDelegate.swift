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
        if toVC is LoginViewController && operation == .pop {
            return LoginPopAnimation()
        } else if fromVC is LoginViewController && operation == .push {
            return LoginPushAnimation()
        } else {
            return nil
        }
    }
    
}
