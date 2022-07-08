//
//  EquipmentLossesViewController.swift
//  RusLosses
//
//  Created by admin on 04.07.2022.
//

import UIKit

class EquipmentLossesViewController: UIViewController {

    private lazy var apcImageView: UIImageView = {
        let apcImageView = UIImageView()
        apcImageView.backgroundColor = .systemGray
        apcImageView.layer.cornerRadius = 20
        apcImageView.image = .APC
        apcImageView.contentMode = .left
        apcImageView.layer.borderWidth = 2
        apcImageView.layer.borderColor = UIColor.systemGray6.cgColor
        apcImageView.contentMode = .left

        return apcImageView
    }()

    private lazy var apcTitle: UILabel = {
        let apcTitle = UILabel()
        apcTitle.numberOfLines = 0
        apcTitle.font = .systemFont(ofSize: 20, weight: .semibold)
        return apcTitle
    }()


    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBarController?.tabBar.isHidden = true
        setupConstraints()

    }

    override func viewWillDisappear(_ animated: Bool) {
        self.tabBarController?.tabBar.isHidden = false

    }


    func setupUI(_ equip: Equipment) {
        if let APCcount = equip.APC {
            apcTitle.text = "Destroyed \(APCcount) APC"
        }


    }
}

extension EquipmentLossesViewController {
    func setupConstraints() {
        view.addSubview(apcImageView)
        apcImageView.addSubview(apcTitle)

        apcImageView.translatesAutoresizingMaskIntoConstraints = false
        apcTitle.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            apcImageView.leadingAnchor.constraint(
                equalTo: view.leadingAnchor, constant: 10),
            apcImageView.trailingAnchor.constraint(
                equalTo: view.trailingAnchor, constant: -10),
            apcImageView.topAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.topAnchor),
            apcImageView.heightAnchor.constraint(
                equalToConstant: 50),

            apcTitle.topAnchor.constraint(
                equalTo: apcImageView.topAnchor, constant: 15),
            apcTitle.leadingAnchor.constraint(
                equalTo: apcImageView.leadingAnchor, constant: 60),
            apcTitle.trailingAnchor.constraint(
                equalTo: apcImageView.trailingAnchor, constant: -5),

        ])
    }
}
