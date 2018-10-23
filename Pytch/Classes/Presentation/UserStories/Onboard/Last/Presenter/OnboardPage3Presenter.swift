//
//  OnboardLastPresenter.swift
//  Pytch
//
//  Created by Rinat Enikeev on 23/10/2018.
//  Copyright © 2018 Aparlay Limited. All rights reserved.
//

import Foundation

class OnboardLastPresenter {
    weak var view: OnboardLastViewInput!
    var rootRouter: RootRouterInput!
}

extension OnboardLastPresenter: OnboardLastViewOutput {
    func finish() {
        rootRouter.unwindToLogin()
    }
}
