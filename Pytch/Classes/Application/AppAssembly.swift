//
//  AppAssembly.swift
//  Pytch
//
//  Created by Rinat Enikeev on 04/10/2018.
//  Copyright © 2018 Aparlay Limited. All rights reserved.
//

import Swinject

class AppAssembly {
    static let shared = AppAssembly()
    
    var assembler: Assembler
    
    init() {
        assembler = Assembler(
            [
                BusinessAssembly(),
                PresentationAssembly()
            ])
    }
}
