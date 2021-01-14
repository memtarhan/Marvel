//
//  ViewControllerAssembly.swift
//  Marvel
//
//  Created by Mehmet Tarhan on 14.01.2021.
//

import Foundation
import Swinject

class ViewControllerAssembly: Assembly {
    private let assembler: Assembler

    init(assembler: Assembler) {
        self.assembler = assembler
    }

    func assemble(container: Container) {
        container.register(ViewControllerFactory.self) { _ in
            ViewControllerFactoryImpl(assembler: self.assembler)
        }
    }
}
