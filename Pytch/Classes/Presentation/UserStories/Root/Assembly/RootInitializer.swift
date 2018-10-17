//
//  RootInitializer.swift
//  Pytch
//
//  Created by Rinat Enikeev on 17/10/2018.
//  Copyright © 2018 Aparlay Limited. All rights reserved.
//

import UIKit

class RootInitializer: NSObject {
    @IBOutlet weak var navigationController: UINavigationController!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        RootConfigurator().configure(navigationController: navigationController)
    }
}
