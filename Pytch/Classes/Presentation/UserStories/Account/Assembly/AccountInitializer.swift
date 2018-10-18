//
//  AccountInitializer.swift
//  Pytch
//
//  Created by Rinat Enikeev on 18/10/2018.
//  Copyright © 2018 Aparlay Limited. All rights reserved.
//

import Foundation

class AccountInitializer: NSObject {
    @IBOutlet weak var viewController: AccountViewController!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        AccountConfigurator().configure(view: viewController)
    }
}
