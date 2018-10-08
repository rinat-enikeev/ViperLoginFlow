//
//  WebPresenter.swift
//  Pytch
//
//  Created by Rinat Enikeev on 08/10/2018.
//  Copyright © 2018 Aparlay Limited. All rights reserved.
//

import Foundation

class WebPresenter: WebModuleInput {
    weak var view: WebViewInput!
    var router: WebRouterInput!
    var interactor: WebInteractorInput!
}

extension WebPresenter: WebViewOutput {
    
}

extension WebPresenter: WebInteractorOutput {
    
}
