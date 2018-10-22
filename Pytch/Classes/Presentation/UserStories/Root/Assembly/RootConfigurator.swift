//
//  RootConfigurator.swift
//  Pytch
//
//  Created by Rinat Enikeev on 17/10/2018.
//  Copyright © 2018 Aparlay Limited. All rights reserved.
//

import UIKit

class RootConfigurator {
    
    func configure(navigationController: UINavigationController) {
        let router = RootRouter.shared
        router.navigationController = navigationController
        router.navigationDelegate = RootNavigationDelegate()
        navigationController.delegate = router.navigationDelegate
        navigationController.view.backgroundColor = .white
    }
    
}
