//
//  RootRouterImpl.swift
//  Pytch
//
//  Created by Rinat Enikeev on 04/10/2018.
//  Copyright © 2018 Aparlay Limited. All rights reserved.
//

import UIKit

class RootRouterImpl: RootRouter {
    
    static let shared = RootRouterImpl()
    
    func openLogin() {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let storyboard = UIStoryboard(name: "Login", bundle: .main)
        let rootController = storyboard.instantiateInitialViewController()
        appDelegate.window?.rootViewController = rootController
        appDelegate.window?.makeKeyAndVisible()
    }
}
