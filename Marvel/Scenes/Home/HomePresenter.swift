//
//  HomePresenter.swift
//  Marvel
//
//  Created by Mehmet Tarhan on 14.01.2021.
//  Copyright © 2021 memtarhan. All rights reserved.
//

import Foundation

protocol HomePresenter {
    var view: HomeViewController? { get set }
    var interactor: HomeInteractor? { get set }
    var router: HomeRouter? { get set }
}

class HomePresenterImpl: HomePresenter {
    var view: HomeViewController?
    var interactor: HomeInteractor?
    var router: HomeRouter?
}
