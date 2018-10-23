//
//  OnboardPage3Initializer.swift
//  Pytch
//
//  Created by Rinat Enikeev on 23/10/2018.
//  Copyright © 2018 Aparlay Limited. All rights reserved.
//

import UIKit

class OnboardPage3Initializer: NSObject {
    @IBOutlet weak var viewController: OnboardPage3ViewController!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        OnboardPage3Configurator().configure(view: viewController)
    }
}
