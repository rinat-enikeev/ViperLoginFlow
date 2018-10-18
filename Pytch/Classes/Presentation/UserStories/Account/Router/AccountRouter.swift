//
//  AccountRouter.swift
//  Pytch
//
//  Created by Rinat Enikeev on 18/10/2018.
//  Copyright © 2018 Aparlay Limited. All rights reserved.
//

import UIKit

class AccountRouter: AccountRouterInput {
    weak var transitionHandler: UIViewController!
    var rootRouter: RootRouterInput!
    
    func openLogin() {
        rootRouter.unwindToLogin()
    }
}
