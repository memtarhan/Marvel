//
//  HomeAssembly.swift
//  Marvel
//
//  Created by Mehmet Tarhan on 14.01.2021.
//

import Swinject
import UIKit

class HomeAssembly: Assembly {
    func assemble(container: Container) {
        container.register(HomeViewController.self) { r in
            let viewController = HomeViewControllerImpl(nibName: "HomeViewController", bundle: nil)
            var presenter = r.resolve(HomePresenter.self)!
            let interactor = r.resolve(HomeInteractor.self)!
            var router = r.resolve(HomeRouter.self)!

            presenter.view = viewController
            presenter.router = router
            presenter.interactor = interactor
            viewController.presenter = presenter
            router.view = viewController

            return viewController
        }

        container.register(HomePresenter.self) { _ in
            HomePresenterImpl()
        }

        container.register(HomeInteractor.self) { r in
            HomeInteractorImpl(service: r.resolve(HomeService.self)!)
        }

        container.register(HomeRouter.self) { r in
            HomeRouterImpl(factory: r.resolve(ViewControllerFactory.self)!)
        }
        
        container.register(HomeService.self) { r in
            HomeServiceImpl()
        }
    }
}
