//
//  RegisterService.swift
//  Pytch
//
//  Created by Rinat Enikeev on 18/10/2018.
//  Copyright © 2018 Aparlay Limited. All rights reserved.
//

import Foundation

protocol RegisterService {
    func register(username: String, password: String, completion: @escaping (Error?) -> Void)
}
