//
//  RegisterViewController.swift
//  Pytch
//
//  Created by Rinat Enikeev on 18/10/2018.
//  Copyright © 2018 Aparlay Limited. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {
    var output: RegisterViewOutput!
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
}

// MARK: - RegisterViewInput
extension RegisterViewController: RegisterViewInput {
    func show(error: Error) {
        print(error.localizedDescription)
    }
}

// MARK: - IBActions
extension RegisterViewController {
    @IBAction func registerButtonTouchUpInside(_ sender: Any) {
        output.register(email: emailTextField.text!, password: passwordTextField.text!)
    }
}
