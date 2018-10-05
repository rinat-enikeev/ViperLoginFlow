//
//  RootRouterImpl.swift
//  Pytch
//
//  Created by Rinat Enikeev on 04/10/2018.
//  Copyright © 2018 Aparlay Limited. All rights reserved.
//

import UIKit

class RootRouterImpl: RootRouter {
    var loginService: LoginService!
    
    func openRootScene() {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.window = UIWindow(frame: UIScreen.main.bounds)
        var mainStoryboard: UIStoryboard? = nil
        if loginService.isLoggedIn {
            mainStoryboard = UIStoryboard(name: "TabBar", bundle: .main)
        } else {
            mainStoryboard = UIStoryboard(name: "Login", bundle: .main)
        }
        let rootController = mainStoryboard!.instantiateInitialViewController()
        appDelegate.window?.rootViewController = rootController
        appDelegate.window?.makeKeyAndVisible()
    }
}
