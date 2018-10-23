//
//  OnboardPage3Presenter.swift
//  Pytch
//
//  Created by Rinat Enikeev on 23/10/2018.
//  Copyright © 2018 Aparlay Limited. All rights reserved.
//

import Foundation

class OnboardPage3Presenter {
    weak var view: OnboardPage3ViewInput!
    var rootRouter: RootRouterInput!
}

extension OnboardPage3Presenter: OnboardPage3ViewOutput {
    func finish() {
        rootRouter.unwindToLogin()
    }
}
