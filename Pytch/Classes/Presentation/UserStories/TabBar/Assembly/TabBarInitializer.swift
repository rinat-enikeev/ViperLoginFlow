//
//  TabBarInitializer.swift
//  Pytch
//
//  Created by Rinat Enikeev on 04/10/2018.
//  Copyright © 2018 Aparlay Limited. All rights reserved.
//

import Foundation

class TabBarInitializer: NSObject {
    @IBOutlet weak var viewController: TabBarViewController!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        TabBarConfigurator().configure(view: viewController)
    }
}
