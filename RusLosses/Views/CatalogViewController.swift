//
//  CatalogViewController.swift
//  RusLosses
//
//  Created by admin on 04.07.2022.
//

import UIKit

class CatalogViewController: UIViewController {

    //MARK: - Properties

    private var orksViewModel = OrksViewModel()
    private var equipmentViewModel = EquipmentViewModel()

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
        containerImageView.image = .goodOrk
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

    private lazy var sortedButton: UIBarButtonItem = {
        let sortedButton = UIBarButtonItem(image: Constants.UI.sortedButton, style: .plain, target: self, action: #selector(sortedDataDisplay))
        return sortedButton
    }()

    //MARK: - Life cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.setupNavigationBar()
        navigationItem.title = Constants.UI.title

        self.navigationItem.rightBarButtonItem  = sortedButton

        //loading Equipment from API

        equipmentViewModel.loadEquip(completion: {
            DispatchQueue.main.async {
                self.collectionView.reloadData()

            }
        })

        //loading Orks from API

        orksViewModel.loadGoodOrks(completion: {
            self.displayOrks()
        })

        setupViews()
    }

    private func displayOrks() {
        if let orks = self.orksViewModel.orks.first?.personnel {
            let stringOrks = String(orks)
            self.orkTitle.text = "There are already \(stringOrks) good orcs"

        }
    }

    //MARK: - Toggle Data   !! it`s works but doesn't look nice

    @objc private func sortedDataDisplay() {

        //Create Alert Controller
        let alert = UIAlertController(title: Constants.UI.alertTitle,
                                      message: Constants.UI.alertMessage,
                                      preferredStyle: UIAlertController.Style.alert)

        // Create the actions
        let fromFirstDayAction = UIAlertAction(title: Constants.UI.alertActionFirstDayTitle, style: UIAlertAction.Style.default) { _ in
            self.displayOrks()
            self.equipmentViewModel.equipments = self.equipmentViewModel.notReversed
            self.collectionView.reloadData()
        }

        let fromLastDayAction = UIAlertAction(title: "From last day", style: UIAlertAction.Style.default) { _ in
            self.equipmentViewModel.equipments = self.equipmentViewModel.reversed
            self.collectionView.reloadData()
            if let orks = self.orksViewModel.orks.last?.personnel {
                let stringOrks = String(orks)
                self.orkTitle.text = "There are already \(stringOrks) good orcs"

            }

        }

        // Add the actions
        alert.addAction(fromFirstDayAction)
        alert.addAction(fromLastDayAction)
        self.present(alert, animated: true, completion: nil)

    }

    //MARK: - Action to switch to another controller

    @objc private func orksButtonPressed() {
        let vc = OrkLossesList()
        self.navigationController?.pushViewController(vc, animated: true)

    }

    //MARK: - Add launchScreen animation

    private let imageView: UIImageView = {
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 500, height: 500))
        imageView.image = UIImage.launcIcon
        return imageView
    }()

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        imageView.center = view.center
        launchScreenAnimate()

        DispatchQueue.main.asyncAfter(deadline: .now()+0.7, execute: {
            self.launchScreenAnimate()
        })
    }

    private func launchScreenAnimate() {
        UIView.animate(withDuration: 0.7, animations: {
            let size = self.view.frame.size.width * 20
            let diffX = size - self.view.frame.size.width
            let diffY = self.view.frame.size.height - size

            self.imageView.frame = CGRect(
                x: -(diffX/2),
                y: diffY/2,
                width: size,
                height: size
            )

            self.imageView.alpha = 0
        })
    }
}

extension CatalogViewController: UICollectionViewDataSource, UICollectionViewDelegate {

    //MARK: - CollectionView DataSource

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return equipmentViewModel.equipments.count

    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier: EquipmentCollectionViewCell.identifier,
            for: indexPath) as? EquipmentCollectionViewCell else {
            return UICollectionViewCell()

        }
        
        let equip = equipmentViewModel.equipments[indexPath.row]
        cell.configureCell(equip: equip)
        return cell
    }

    //MARK: - CollectionView Delegate

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let equipDay = equipmentViewModel.equipments[indexPath.row]
        let convertedArray = equipmentViewModel.convertToArray(equipDay)
        let vc = EquipmentLossesViewController()
        vc.setupUI(convertedArray)
        vc.navigationController?.navigationItem.largeTitleDisplayMode = .never
        navigationController?.pushViewController(vc, animated: true)
    }

    //MARK: - SetupViews

    func setupViews() {
        view.addSubview(imageView)
        view.addSubview(containerImageView)
        containerImageView.addSubview(orkTitle)
        containerImageView.addSubview(orksButton)
        view.addSubview(collectionView)
        [containerImageView, orkTitle, orksButton, collectionView].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
        }

        //Constraints

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
