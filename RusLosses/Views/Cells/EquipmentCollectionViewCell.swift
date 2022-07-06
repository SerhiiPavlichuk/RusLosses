//
//  EquipmentCollectionViewCell.swift
//  RusLosses
//
//  Created by admin on 06.07.2022.
//

import UIKit

class EquipmentCollectionViewCell: UICollectionViewCell {

    static let identifier = "EquipmentCollectionViewCell"

    private lazy var destroyedEquipmentLabel: UILabel = {
        let destroyedEquipmentLabel = UILabel()
        destroyedEquipmentLabel.font = .systemFont(ofSize: 15, weight: .semibold)
        destroyedEquipmentLabel.numberOfLines = 0
        destroyedEquipmentLabel.text = "500000"
        return destroyedEquipmentLabel
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupCell()

    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        setupLayout()

    }
    
    private func setupCell() {
        contentView.clipsToBounds = true
        contentView.backgroundColor = .systemGray
        contentView.layer.cornerRadius = 10
        contentView.layer.borderWidth = 2
        contentView.layer.borderColor = UIColor.systemGray6.cgColor

    }

    private func setupLayout() {
        [destroyedEquipmentLabel].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            contentView.addSubview($0)

        }

        NSLayoutConstraint.activate([
            destroyedEquipmentLabel.topAnchor.constraint(
                equalTo: contentView.topAnchor, constant: 5),
            destroyedEquipmentLabel.leadingAnchor.constraint(
                equalTo: contentView.leadingAnchor, constant: 10),
            destroyedEquipmentLabel.trailingAnchor.constraint(
                equalTo: contentView.trailingAnchor, constant: -10)

        ])
    }

    func configureCell(equip: Equipment) {



    }
}
