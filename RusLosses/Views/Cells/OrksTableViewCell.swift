//
//  OrksTableViewCell.swift
//  RusLosses
//
//  Created by admin on 05.07.2022.
//

import UIKit

class OrksTableViewCell: UITableViewCell {

    static let identifier = "OrksTableViewCell"

    private lazy var containerView: UIView = {
        let containerView = UIView()
        containerView.backgroundColor = .systemGray
        containerView.layer.cornerRadius = 20
        containerView.layer.borderWidth = 2
        containerView.layer.borderColor = UIColor.systemGray6.cgColor
        return containerView
    }()

    private lazy var dayLabel: UILabel = {
        let daylabel = UILabel()
        daylabel.font = .systemFont(ofSize: 20, weight: .semibold)
        return daylabel
    }()

    private lazy var dateLabel: UILabel = {
        let dateLabel = UILabel()
        dateLabel.font = .systemFont(ofSize: 20, weight: .semibold)
        return dateLabel
    }()

    private lazy var orksLabel: UILabel = {
        let orksLabel = UILabel()
        orksLabel.font = .systemFont(ofSize: 20, weight: .heavy)
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
        [containerView, dayLabel, dateLabel, orksLabel].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
        }

        contentView.addSubview(containerView)
        containerView.addSubview(dayLabel)
        containerView.addSubview(dateLabel)
        containerView.addSubview(orksLabel)

        NSLayoutConstraint.activate([
            containerView.topAnchor.constraint(
                equalTo: contentView.topAnchor, constant: 5),
            containerView.leadingAnchor.constraint(
                equalTo: contentView.leadingAnchor, constant: 10),
            containerView.trailingAnchor.constraint(
                equalTo: contentView.trailingAnchor, constant: -10),
            containerView.heightAnchor.constraint(equalToConstant: 60),
            
            dayLabel.topAnchor.constraint(
                equalTo: containerView.topAnchor, constant: 5),
            dayLabel.leadingAnchor.constraint(
                equalTo: containerView.leadingAnchor, constant:  15),
            dayLabel.heightAnchor.constraint(equalToConstant: 16),

            dateLabel.topAnchor.constraint(
                equalTo: containerView.topAnchor, constant: 5),
            dateLabel.trailingAnchor.constraint(
                equalTo: containerView.trailingAnchor, constant: -15),
            dateLabel.heightAnchor.constraint(equalToConstant: 16),

            orksLabel.topAnchor.constraint(
                equalTo: dateLabel.bottomAnchor, constant: 20),
            orksLabel.centerXAnchor.constraint(
                equalTo: containerView.centerXAnchor),
            orksLabel.heightAnchor.constraint(equalToConstant: 16)

        ])
    }

    func configureCell(orks: Orks) {
        contentView.backgroundColor = UIColor(named: Constants.UI.backgroundColor)
        if let day = orks.day {
            dayLabel.text = "Invasion day \(day)"
        }
         if let goodOrks = orks.personnel {
            orksLabel.text = "Orks killed \(goodOrks)"
        }
        dateLabel.text = "Date " + (orks.date ?? "No Date")
    }
}
