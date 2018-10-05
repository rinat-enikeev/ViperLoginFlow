//
//  LoginService.swift
//  Pytch
//
//  Created by Rinat Enikeev on 04/10/2018.
//  Copyright © 2018 Aparlay Limited. All rights reserved.
//

import Foundation

protocol LoginService {
    var isLoggedIn: Bool { get }
    
    func login()
    func logout()
}
