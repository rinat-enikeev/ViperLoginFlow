//
//  RegisterInteractorOutput.swift
//  Pytch
//
//  Created by Rinat Enikeev on 18/10/2018.
//  Copyright © 2018 Aparlay Limited. All rights reserved.
//

import Foundation

protocol RegisterInteractorOutput: class {
    func didRegister()
    func didFailToRegister(with error: Error)
}
