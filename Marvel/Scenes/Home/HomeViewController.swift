//
//  HomeViewController.swift
//  Marvel
//
//  Created by Mehmet Tarhan on 14.01.2021.
//

import UIKit

protocol HomeViewController {
    var presenter: HomePresenter? { get set }
}

class HomeViewControllerImpl: UIViewController {
    var presenter: HomePresenter?

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

// MARK: - HomeViewController

extension HomeViewControllerImpl: HomeViewController {
}
