//
//  HomeInteractor.swift
//  Marvel
//
//  Created by Mehmet Tarhan on 14.01.2021.
//  Copyright © 2021 memtarhan. All rights reserved.
//

import Foundation

protocol HomeInteractor: class {
}

class HomeInteractorImpl: HomeInteractor {
    private let service: HomeService

    init(service: HomeService) {
        self.service = service
    }
}
