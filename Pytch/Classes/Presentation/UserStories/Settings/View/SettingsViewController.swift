//
//  SettingsViewController.swift
//  Pytch
//
//  Created by Rinat Enikeev on 05/10/2018.
//  Copyright © 2018 Aparlay Limited. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    var output: SettingsViewOutput!
}

// MARK: - SettingsViewInput
extension SettingsViewController: SettingsViewInput {
    
}

// MARK: - IBActions
extension SettingsViewController {
    
    @IBAction func logoutTouchUpInside(_ sender: Any) {
        output.logout()
    }
}
