//
//  OnboardViewInput.swift
//  Pytch
//
//  Created by Rinat Enikeev on 18/10/2018.
//  Copyright © 2018 Aparlay Limited. All rights reserved.
//

import Foundation

enum OnboardPage {
    case page1
    case page2
    case page3
}

protocol OnboardViewInput: class {
    func navigate(to page: OnboardPage, animated: Bool)
}
