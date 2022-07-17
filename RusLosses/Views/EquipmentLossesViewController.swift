//
//  EquipmentLossesViewController.swift
//  RusLosses
//
//  Created by admin on 04.07.2022.
//

import UIKit

class EquipmentLossesViewController: UIViewController {

    var arrayOfData: [LossesData] = []

    private lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.register(EquipmentLossesTableViewCell.self, forCellReuseIdentifier: EquipmentLossesTableViewCell.identifier)
        tableView.dataSource = self
        tableView.delegate = self
        tableView.backgroundColor = UIColor(named: Constants.UI.backgroundColor)
        tableView.separatorStyle = .none
        return tableView
    }()

    //MARK: - Life cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.setupNavigationBar()
        self.tabBarController?.tabBar.isHidden = true
        view.addSubview(tableView)

    }

    override func viewWillDisappear(_ animated: Bool) {
        self.tabBarController?.tabBar.isHidden = false

    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }

    func setupUI(_ equip: [LossesData]) {

        self.arrayOfData = equip
        tableView.reloadData()
    }
}

extension EquipmentLossesViewController: UITableViewDataSource, UITableViewDelegate {

    //MARK: - TableView DataSource

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        arrayOfData.count
        
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(
            withIdentifier: EquipmentLossesTableViewCell.identifier,
            for: indexPath) as? EquipmentLossesTableViewCell else {
            fatalError()

        }

        let equipModel = arrayOfData[indexPath.row]
        cell.configureCell(equip: equipModel)

        return cell
    }

    //MARK: - TableView Delegate

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60

    }
}
