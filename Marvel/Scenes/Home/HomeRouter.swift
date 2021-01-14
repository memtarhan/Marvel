//
//  HomeRouter.swift
//  Marvel
//
//  Created by Mehmet Tarhan on 14.01.2021.
//  Copyright © 2021 memtarhan. All rights reserved.
//

import Foundation

protocol HomeRouter {
    var view: HomeViewController? { get set }
}

class HomeRouterImpl: HomeRouter {
    var view: HomeViewController?

    private let factory: ViewControllerFactory

    init(factory: ViewControllerFactory) {
        self.factory = factory
    }
}
