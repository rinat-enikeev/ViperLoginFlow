//
//  OnboardLastInitializer.swift
//  Pytch
//
//  Created by Rinat Enikeev on 23/10/2018.
//  Copyright © 2018 Aparlay Limited. All rights reserved.
//

import UIKit

class OnboardLastInitializer: NSObject {
    @IBOutlet weak var viewController: OnboardLastViewController!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        OnboardLastConfigurator().configure(view: viewController)
    }
}
