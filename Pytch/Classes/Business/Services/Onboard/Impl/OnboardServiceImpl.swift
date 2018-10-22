//
//  OnboardServiceImpl.swift
//  Pytch
//
//  Created by Rinat Enikeev on 18/10/2018.
//  Copyright © 2018 Aparlay Limited. All rights reserved.
//

import Foundation

class OnboardServiceImpl: OnboardService {
    
    static let shared = OnboardServiceImpl()
    
    var isOnboarded: Bool = true
}
