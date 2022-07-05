//
//  OrksTableViewCell.swift
//  RusLosses
//
//  Created by admin on 05.07.2022.
//

import UIKit

class OrksTableViewCell: UITableViewCell {

    static let identifier = "OrksTableViewCell"

    private lazy var dayLabel: UILabel = {
        let daylabel = UILabel()
        daylabel.font.withSize(25)
        return daylabel
    }()

    private lazy var dateLabel: UILabel = {
        let dateLabel = UILabel()
        dateLabel.font.withSize(20)
        return dateLabel
    }()

    private lazy var orksLabel: UILabel = {
        let orksLabel = UILabel()
        orksLabel.font.withSize(20)
        orksLabel.textColor = .systemRed
        return orksLabel
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupCell()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupCell() {
        [dayLabel, dateLabel, orksLabel].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            contentView.addSubview($0)
        }

        NSLayoutConstraint.activate([
            dayLabel.topAnchor.constraint(
                equalTo: contentView.topAnchor, constant: 5),
            dayLabel.centerXAnchor.constraint(
                equalTo: contentView.centerXAnchor),
            dayLabel.heightAnchor.constraint(equalToConstant: 16),

            dateLabel.topAnchor.constraint(
                equalTo: dayLabel.bottomAnchor, constant: 10),
            dateLabel.leadingAnchor.constraint(
                equalTo: contentView.leadingAnchor, constant: 5),
            dateLabel.heightAnchor.constraint(equalToConstant: 16),

            orksLabel.topAnchor.constraint(
                equalTo: dateLabel.bottomAnchor, constant: 5),
            orksLabel.centerXAnchor.constraint(
                equalTo: contentView.centerXAnchor),
            orksLabel.heightAnchor.constraint(equalToConstant: 16)

        ])
    }

    func configureCell(orks: Orks) {
        if let day = orks.day {
            dayLabel.text = "Invasion day \(String(describing: day))"
        }
         if let goodOrks = orks.personnel {
            orksLabel.text = "Orks killed \(String(describing: goodOrks))"
        }
        dateLabel.text = "Date " + (orks.date ?? "No Date")
    }
}
