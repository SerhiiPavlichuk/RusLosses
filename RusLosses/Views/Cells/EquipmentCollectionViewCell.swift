//
//  EquipmentCollectionViewCell.swift
//  RusLosses
//
//  Created by admin on 06.07.2022.
//

import UIKit

class EquipmentCollectionViewCell: UICollectionViewCell {

    static let identifier = "EquipmentCollectionViewCell"

    //MARK: - Properties

    private lazy var dayLabel: UILabel = {
        let dayLabel = UILabel()
        dayLabel.font = .systemFont(ofSize: 15, weight: .semibold)
        dayLabel.numberOfLines = 0
        dayLabel.text = "No Date"
        return dayLabel
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

    //MARK: - SetupCell
    
    private func setupCell() {
        contentView.backgroundColor = .systemGray
        contentView.layer.cornerRadius = 10
        contentView.layer.borderWidth = 2
        contentView.layer.borderColor = UIColor.systemGray6.cgColor

    }

    //MARK: - Setup Layout

    private func setupLayout() {
        [dayLabel].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            contentView.addSubview($0)

        }

        NSLayoutConstraint.activate([
            dayLabel.topAnchor.constraint(
                equalTo: contentView.topAnchor, constant: 5),
            dayLabel.leadingAnchor.constraint(
                equalTo: contentView.leadingAnchor, constant: 10),
            dayLabel.trailingAnchor.constraint(
                equalTo: contentView.trailingAnchor, constant: -10),
            dayLabel.heightAnchor.constraint(equalToConstant: 80),
            dayLabel.widthAnchor.constraint(equalToConstant: 80)

        ])
    }

    //MARK: - Cofigure Cell

    func configureCell(equip: Equipment) {
        if let day = equip.day {
            dayLabel.text = "For \(day) days destroyed equipment"
        }


    }
}
