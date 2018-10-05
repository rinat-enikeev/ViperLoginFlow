//
//  SettingsInitializer.swift
//  Pytch
//
//  Created by Rinat Enikeev on 05/10/2018.
//  Copyright © 2018 Aparlay Limited. All rights reserved.
//

import Foundation

class SettingsInitializer: NSObject {
    @IBOutlet weak var viewController: SettingsViewController!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        SettingsConfigurator().configure(view: viewController)
    }
}
