//
//  OrkLossesList.swift
//  RusLosses
//
//  Created by admin on 04.07.2022.
//

import UIKit

class OrkLossesList: UIViewController {

    private var orkViewModel = OrksViewModel()
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView()
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBarController?.tabBar.isHidden = true
        tableView.register(OrksTableViewCell.self, forCellReuseIdentifier: OrksTableViewCell.identifier)
        view.addSubview(tableView)
        tableView.dataSource = self
        tableView.delegate = self
        orkViewModel.loadGoodOrks(completion: {
            self.tableView.reloadData()
        })

    }

    override func viewWillDisappear(_ animated: Bool) {
        self.tabBarController?.tabBar.isHidden = false

    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds

    }
}

extension OrkLossesList: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        orkViewModel.orks.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: OrksTableViewCell.identifier, for: indexPath) as? OrksTableViewCell else {
            fatalError()

        }
        let ork = self.orkViewModel.orks[indexPath.row]
        cell.configureCell(orks: ork)

        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
}
