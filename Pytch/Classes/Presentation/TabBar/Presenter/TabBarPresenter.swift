//
//  TabBarPresenter.swift
//  Pytch
//
//  Created by Rinat Enikeev on 04/10/2018.
//  Copyright © 2018 Aparlay Limited. All rights reserved.
//

import Foundation

class TabBarPresenter: TabBarModuleInput {
    weak var view: TabBarViewInput!
    var router: TabBarRouterInput!
    var interactor: TabBarInteractorInput!
}

extension TabBarPresenter: TabBarViewOutput {
    
}

extension TabBarPresenter: TabBarInteractorOutput {
    
}
