//
//  EquipmentLossesTableViewCell.swift
//  RusLosses
//
//  Created by admin on 15.07.2022.
//

import UIKit

class EquipmentLossesTableViewCell: UITableViewCell {

    static let identifier = "EquipmentLossesTableViewCell"

    //MARK: - Properties

    private lazy var containerView: UIView = {
        let containerView = UIView()
        containerView.backgroundColor = .systemGray
        containerView.layer.cornerRadius = 20
        containerView.layer.borderWidth = 2
        containerView.layer.borderColor = UIColor.systemGray6.cgColor
        return containerView
    }()

    private lazy var equipImageView: UIImageView = {
        let equipImageView = UIImageView()
        return equipImageView
    }()

    lazy var equipNameTitle: UILabel = {
        let equipNameTitle = UILabel()
        equipNameTitle.numberOfLines = 0
        equipNameTitle.font = .systemFont(ofSize: 20, weight: .semibold)
        return equipNameTitle
    }()

    lazy var amountTitle: UILabel = {
        let amountTitle = UILabel()
        amountTitle.numberOfLines = 0
        amountTitle.font = .systemFont(ofSize: 20, weight: .semibold)
        amountTitle.textColor = .red
        return amountTitle
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupCell()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    //MARK: - Configure Cell

    func configureCell(equip: LossesData) {
        contentView.backgroundColor = UIColor(named: Constants.UI.backgroundColor)
        equipImageView.image = equip.image
        equipNameTitle.text = equip.title
        if let equipDestroyed = equip.amount {
            amountTitle.text = String(equipDestroyed)
        }
    }

    //MARK: - Setup Cell

    private func setupCell() {
        [containerView, equipImageView, equipNameTitle, amountTitle].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false

        }

        contentView.addSubview(containerView)
        containerView.addSubview(equipImageView)
        containerView.addSubview(equipNameTitle)
        containerView.addSubview(amountTitle)

        //Constrains
        
        NSLayoutConstraint.activate([
            containerView.topAnchor.constraint(
                equalTo: contentView.topAnchor, constant: 5),
            containerView.leadingAnchor.constraint(
                equalTo: contentView.leadingAnchor, constant: 10),
            containerView.trailingAnchor.constraint(
                equalTo: contentView.trailingAnchor, constant: -10),
            containerView.heightAnchor.constraint(equalToConstant: 50),

            equipImageView.topAnchor.constraint(
                equalTo: containerView.topAnchor, constant: 5),
            equipImageView.widthAnchor.constraint(
                equalToConstant: 40),
            equipImageView.leadingAnchor.constraint(
                equalTo: containerView.leadingAnchor, constant: 10),
            equipImageView.bottomAnchor.constraint(
                equalTo: containerView.bottomAnchor, constant: -5),

            equipNameTitle.centerYAnchor.constraint(
                equalTo: equipImageView.centerYAnchor),
            equipNameTitle.leadingAnchor.constraint(
                equalTo: equipImageView.trailingAnchor, constant: 5),

            amountTitle.centerYAnchor.constraint(
                equalTo: equipImageView.centerYAnchor),
            amountTitle.leadingAnchor.constraint(
                equalTo: equipNameTitle.trailingAnchor, constant: 5)
        ])
    }
}
