//
//  SettingsRouter.swift
//  Pytch
//
//  Created by Rinat Enikeev on 05/10/2018.
//  Copyright © 2018 Aparlay Limited. All rights reserved.
//

import UIKit

enum SettingsSegue: String {
    case accountNavigation = "ShowAccountViewControllerSegueIdentifier"
    case accountModal = "PresentAccountViewControllerSegueIdentifier"
}

class SettingsRouter: SettingsRouterInput {
    weak var transitionHandler: UIViewController!
    
    func openAccountModal() {
        transitionHandler.performSegue(withIdentifier: SettingsSegue.accountModal.rawValue, sender: nil)
    }
    
    func openAccountNavigation() {
        transitionHandler.performSegue(withIdentifier: SettingsSegue.accountNavigation.rawValue, sender: nil)
    }
}
