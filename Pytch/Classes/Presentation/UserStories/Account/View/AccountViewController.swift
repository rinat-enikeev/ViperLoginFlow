//
//  AccountViewController.swift
//  Pytch
//
//  Created by Rinat Enikeev on 18/10/2018.
//  Copyright © 2018 Aparlay Limited. All rights reserved.
//

import UIKit

class AccountViewController: UIViewController {
    var output: AccountViewOutput!
}

// MARK: - AccountViewInput
extension AccountViewController: AccountViewInput {
    
}

// MARK: - IBActions
extension AccountViewController {
    @IBAction func logoutButtonTouchUpInside(_ sender: Any) {
        output.didSelectLogout()
    }
}
