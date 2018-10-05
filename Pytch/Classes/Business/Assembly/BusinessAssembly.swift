//
//  BusinessAssembly.swift
//  Pytch
//
//  Created by Rinat Enikeev on 04/10/2018.
//  Copyright © 2018 Aparlay Limited. All rights reserved.
//

import Swinject

class BusinessAssembly: Assembly {
    func assemble(container: Container) {
        container.register(LoginService.self) { r in
            let service = LoginServiceImpl()
            return service
        }.inObjectScope(.container)
    }
}
