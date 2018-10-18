//
//  OnboardInitializer.swift
//  Pytch
//
//  Created by Rinat Enikeev on 18/10/2018.
//  Copyright © 2018 Aparlay Limited. All rights reserved.
//

import UIKit

class OnboardInitializer: NSObject {
    @IBOutlet weak var viewController: OnboardViewController!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        OnboardConfigurator().configure(view: viewController)
    }
}
