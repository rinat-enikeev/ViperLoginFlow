//
//  RootRouterImpl.swift
//  Pytch
//
//  Created by Rinat Enikeev on 04/10/2018.
//  Copyright © 2018 Aparlay Limited. All rights reserved.
//

import UIKit

class RootRouterImpl: RootRouter {
    
    func openLogin() {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let mainStoryboard = UIStoryboard(name: "Login", bundle: .main)
        let rootController = mainStoryboard.instantiateInitialViewController()
        appDelegate.window = UIWindow(frame: UIScreen.main.bounds)
        appDelegate.window?.rootViewController = rootController
        appDelegate.window?.makeKeyAndVisible()
    }
}
