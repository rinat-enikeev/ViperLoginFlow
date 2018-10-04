//
//  LoginInitializer.swift
//  Pytch
//
//  Created by Rinat Enikeev on 04/10/2018.
//  Copyright © 2018 Aparlay Limited. All rights reserved.
//

import Foundation

class LoginInitializer: NSObject {
    @IBOutlet weak var viewController: LoginViewController!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        LoginConfigurator().configure(view: viewController)
    }
}
