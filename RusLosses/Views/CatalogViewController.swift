//
//  CatalogViewController.swift
//  RusLosses
//
//  Created by admin on 04.07.2022.
//

import UIKit

class CatalogViewController: UIViewController {

    var orksViewModel = OrksViewModel()
    var equipmentViewModel = EquipmentViewModel()

    private lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical


        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        layout.estimatedItemSize = CGSize(width: 100, height: 100)

        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(EquipmentCollectionViewCell.self, forCellWithReuseIdentifier: EquipmentCollectionViewCell.identifier)
        collectionView.backgroundColor = .clear
        collectionView.showsVerticalScrollIndicator = false
        collectionView.isUserInteractionEnabled = true
        return collectionView
    }()

    private lazy var containerImageView: UIImageView = {
        let containerImageView = UIImageView()
        containerImageView.backgroundColor = .systemGray
        containerImageView.layer.cornerRadius = 20
        containerImageView.image = UIImage(named: Constants.UI.goodOrk)
        containerImageView.layer.borderWidth = 2
        containerImageView.layer.borderColor = UIColor.systemGray6.cgColor
        containerImageView.contentMode = .left
        containerImageView.isUserInteractionEnabled = true
        return containerImageView
    }()

    private lazy var orkTitle: UILabel = {
        let orkTitle = UILabel()
        orkTitle.numberOfLines = 0
        orkTitle.font = .systemFont(ofSize: 25, weight: .semibold)
        orkTitle.isUserInteractionEnabled = true
        return orkTitle
    }()

    private lazy var orksButton: UIButton = {
        let orksButton = UIButton()
        orksButton.addTarget(self, action: #selector(orksButtonPressed),
                             for: .touchUpInside)
        return orksButton
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = Constants.UI.title
        equipmentViewModel.loadEquip(completion: {
            self.collectionView.reloadData()

        })

        orksViewModel.loadGoodOrks(completion: {
            if let orks = self.orksViewModel.orks.last?.personnel {
                let stringOrks = String(orks)
                self.orkTitle.text = "There are already \(stringOrks) good orcs"

            }
        })

        setupConstraints()
    }

    @objc private func orksButtonPressed() {
        let vc = OrkLossesList()
        self.navigationController?.pushViewController(vc, animated: true)

    }
}

extension CatalogViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        equipmentViewModel.equipments.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(
                                        withReuseIdentifier: EquipmentCollectionViewCell.identifier,
                                        for: indexPath) as? EquipmentCollectionViewCell else {
            return UICollectionViewCell()

        }

        return cell
    }


    func setupConstraints() {
        view.addSubview(containerImageView)
        containerImageView.addSubview(orkTitle)
        containerImageView.addSubview(orksButton)
        view.addSubview(collectionView)

        containerImageView.translatesAutoresizingMaskIntoConstraints = false
        orkTitle.translatesAutoresizingMaskIntoConstraints = false
        orksButton.translatesAutoresizingMaskIntoConstraints = false
        collectionView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            containerImageView.leadingAnchor.constraint(
                equalTo: view.leadingAnchor, constant: 50),
            containerImageView.trailingAnchor.constraint(
                equalTo: view.trailingAnchor, constant: -50),
            containerImageView.topAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.topAnchor),
            containerImageView.heightAnchor.constraint(
                equalToConstant: 100),

            orkTitle.topAnchor.constraint(
                equalTo: containerImageView.topAnchor, constant: 5),
            orkTitle.leadingAnchor.constraint(
                equalTo: containerImageView.centerXAnchor, constant: -50),
            orkTitle.trailingAnchor.constraint(
                equalTo: containerImageView.trailingAnchor, constant: -5),

            orksButton.topAnchor.constraint(
                equalTo: containerImageView.topAnchor),
            orksButton.bottomAnchor.constraint(
                equalTo: containerImageView.bottomAnchor),
            orksButton.leadingAnchor.constraint(
                equalTo: containerImageView.leadingAnchor),
            orksButton.trailingAnchor.constraint(
                equalTo: containerImageView.trailingAnchor),

            collectionView.topAnchor.constraint(
                equalTo: containerImageView.bottomAnchor, constant: 20),
            collectionView.leadingAnchor.constraint(
                equalTo: view.leadingAnchor, constant: 20),
            collectionView.trailingAnchor.constraint(
                equalTo: view.trailingAnchor, constant: -20),
            collectionView.bottomAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -10)

        ])
    }
}
