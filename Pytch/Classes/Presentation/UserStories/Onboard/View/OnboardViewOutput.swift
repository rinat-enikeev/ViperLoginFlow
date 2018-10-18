//
//  OnboardViewOutput.swift
//  Pytch
//
//  Created by Rinat Enikeev on 18/10/2018.
//  Copyright © 2018 Aparlay Limited. All rights reserved.
//

import Foundation

protocol OnboardPage1ViewOutput {
    func continueFromPage1()
}

protocol OnboardPage2ViewOutput {
    func continueFromPage2()
}


protocol OnboardPage3ViewOutput {
    func finishFromPage3()
}

protocol OnboardViewOutput: OnboardPage1ViewOutput, OnboardPage2ViewOutput, OnboardPage3ViewOutput {
    
}
