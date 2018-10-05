//
//  PresentationAssembly.swift
//  Pytch
//
//  Created by Rinat Enikeev on 05/10/2018.
//  Copyright © 2018 Aparlay Limited. All rights reserved.
//

import Swinject

class PresentationAssembly: Assembly {
    
    func assemble(container: Container) {
        container.register(RootRouter.self) { r in
            let router = RootRouterImpl()
            router.loginService = r.resolve(LoginService.self)
            return router
        }
    }
    
}
