//
//  LoginRouter.swift
//  Pytch
//
//  Created by Rinat Enikeev on 04/10/2018.
//  Copyright © 2018 Aparlay Limited. All rights reserved.
//

import UIKit

class LoginRouter: LoginRouterInput {
    weak var transitionHandler: UIViewController!
    
    func openTabBar() {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.window?.rootViewController?.dismiss(animated: false, completion: nil)
    }
}
