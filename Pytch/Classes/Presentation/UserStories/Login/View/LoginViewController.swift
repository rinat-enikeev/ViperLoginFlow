//
//  LoginViewController.swift
//  Pytch
//
//  Created by Rinat Enikeev on 04/10/2018.
//  Copyright © 2018 Aparlay Limited. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    var output: LoginViewOutput!
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        output.viewDidAppear()
    }
}

// MARK: - LoginViewInput
extension LoginViewController: LoginViewInput {
    
}

// MARK: - IBActions
extension LoginViewController {
    @IBAction func loginButtonTouchUpInside(_ sender: Any) {
        output.login()
    }
}

