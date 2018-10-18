//
//  SettingsViewController.swift
//  Pytch
//
//  Created by Rinat Enikeev on 05/10/2018.
//  Copyright © 2018 Aparlay Limited. All rights reserved.
//

import UIKit

class SettingsViewController: UITableViewController {
    var output: SettingsViewOutput!
    
    @IBOutlet weak var accountNavigationCell: UITableViewCell!
    @IBOutlet weak var accountModalCell: UITableViewCell!
    
}

// MARK: - SettingsViewInput
extension SettingsViewController: SettingsViewInput {
    
}

// MARK: - UITableViewDelegate
extension SettingsViewController {
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath)
        if cell == accountNavigationCell {
            output.didSelectAccountNavigation()
        } else if cell == accountModalCell {
            output.didSelectAccountModal()
        }
    }
}
