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

    @IBOutlet var collectionView: UICollectionView!

    private let cellReuseIdentifier = "Character"
    private let cellNibIdentifier = "CharacterCollectionViewCell"

    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }

    private func setup() {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "marvel-logo"))
        imageView.contentMode = .scaleAspectFit
        navigationItem.titleView = imageView

        /// - Setting up collection view
        if let layout = collectionView.collectionViewLayout as? CustomLayout {
            layout.delegate = self
        }
        collectionView.contentInsetAdjustmentBehavior = .always
        let cellNib = UINib(nibName: cellNibIdentifier, bundle: nil)
        collectionView.register(cellNib, forCellWithReuseIdentifier: cellReuseIdentifier)
    }
}

// MARK: - HomeViewController

extension HomeViewControllerImpl: HomeViewController {
}

// MARK: - UICollectionViewDelegate - UICollectionViewDataSource

extension HomeViewControllerImpl: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, CustomLayoutDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellReuseIdentifier, for: indexPath) as? CharacterCollectionViewCell else { return UICollectionViewCell() }
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let itemSize = (collectionView.frame.width - (collectionView.contentInset.left + collectionView.contentInset.right + 10)) / 2
        return CGSize(width: itemSize, height: itemSize * 1.5)
    }

    func collectionView(_ collectionView: UICollectionView, heightForPhotoAtIndexPath indexPath: IndexPath) -> CGFloat {
        return collectionView.frame.width / 2
    }
}
