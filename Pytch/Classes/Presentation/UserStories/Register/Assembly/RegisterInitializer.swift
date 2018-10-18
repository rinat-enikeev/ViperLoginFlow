//
//  RegisterInitializer.swift
//  Pytch
//
//  Created by Rinat Enikeev on 18/10/2018.
//  Copyright © 2018 Aparlay Limited. All rights reserved.
//

import UIKit

class RegisterInitializer: NSObject {
    @IBOutlet weak var viewController: RegisterViewController!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        RegisterConfigurator().configure(view: viewController)
    }
}
