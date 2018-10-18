//
//  OnboardPresenter.swift
//  Pytch
//
//  Created by Rinat Enikeev on 18/10/2018.
//  Copyright © 2018 Aparlay Limited. All rights reserved.
//

import Foundation

class OnboardPresenter: OnboardModuleInput {
    weak var view: OnboardViewInput!
    var router: OnboardRouterInput!
    var interactor: OnboardInteractorInput!
}

extension OnboardPresenter: OnboardViewOutput {
    func continueFromPage1() {
        view.navigate(to: .page2, animated: true)
    }
    func continueFromPage2() {
        view.navigate(to: .page3, animated: true)
    }
    func finishFromPage3() {
        router.openLogin()
    }
}

extension OnboardPresenter: OnboardInteractorOutput {
    
}
