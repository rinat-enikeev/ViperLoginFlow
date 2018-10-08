//
//  WebInitializer.swift
//  Pytch
//
//  Created by Rinat Enikeev on 08/10/2018.
//  Copyright © 2018 Aparlay Limited. All rights reserved.
//

import Foundation

class WebInitializer: NSObject {
    @IBOutlet weak var viewController: WebViewController!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        WebConfigurator().configure(view: viewController)
    }
}
