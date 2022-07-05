//
//  CatalogViewController.swift
//  RusLosses
//
//  Created by admin on 04.07.2022.
//

import UIKit

class CatalogViewController: UIViewController {

    var viewModel = CatalogViewModel()

    private lazy var collectionView: UICollectionView = {
        let collectionView = UICollectionView()

        return collectionView
    }()

    private lazy var containerImageView: UIImageView = {
        let containerImageView = UIImageView()
        containerImageView.backgroundColor = .systemGray
        containerImageView.layer.cornerRadius = 20
        containerImageView.image = UIImage(named: "goodOrk")
        containerImageView.layer.borderWidth = 2
        containerImageView.layer.borderColor = UIColor.systemGray6.cgColor
        containerImageView.contentMode = .left
        return containerImageView
    }()

    private lazy var orkTitle: UILabel = {
        let orkTitle = UILabel()
        orkTitle.numberOfLines = 0
        orkTitle.font = .systemFont(ofSize: 25, weight: .semibold)
        return orkTitle
    }()

    private lazy var orksButton: UIButton = {
        let orksButton = UIButton()
        return orksButton
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Enemy Losses"

        viewModel.loadEquip(completion: {
            self.collectionView.reloadData()
        })

        viewModel.loadGoodOrks(completion: {
            if let orks = self.viewModel.orks.last?.personnel {
                let stringOrks = String(orks)
                self.orkTitle.text = "There are already \(stringOrks) good orcs"   
            }
        })

        setupConstraints()
    }
}

extension CatalogViewController {
    func setupConstraints() {
        view.addSubview(containerImageView)
        containerImageView.addSubview(orkTitle)
        containerImageView.addSubview(orksButton)
        containerImageView.translatesAutoresizingMaskIntoConstraints = false
        orkTitle.translatesAutoresizingMaskIntoConstraints = false
        orksButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            containerImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            containerImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            containerImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            containerImageView.heightAnchor.constraint(equalToConstant: 100),
            orkTitle.topAnchor.constraint(equalTo: containerImageView.topAnchor, constant: 5),
            orkTitle.leadingAnchor.constraint(equalTo: containerImageView.centerXAnchor, constant: -50),
            orkTitle.trailingAnchor.constraint(equalTo: containerImageView.trailingAnchor, constant: -5),
            orksButton.topAnchor.constraint(equalTo: containerImageView.topAnchor),
            orksButton.bottomAnchor.constraint(equalTo: containerImageView.bottomAnchor),
            orksButton.leadingAnchor.constraint(equalTo: containerImageView.leadingAnchor),
            orksButton.trailingAnchor.constraint(equalTo: containerImageView.trailingAnchor),
        ])
    }
}
extension NSMutableAttributedString {

    func setColorForText(textForAttribute: String, withColor color: UIColor) {
        let range: NSRange = self.mutableString.range(of: textForAttribute, options: .caseInsensitive)

        // Swift 4.2 and above
        self.addAttribute(NSAttributedString.Key.foregroundColor, value: color, range: range)

    }

}
