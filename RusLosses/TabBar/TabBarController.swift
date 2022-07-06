//
//  TabBarController.swift
//  RusLosses
//
//  Created by admin on 04.07.2022.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBar()

    }

    private func setupTabBar() {
        let catalogIcon = UIImage(named: Constants.UI.documents)
        let humanIcon = UIImage(named: Constants.UI.helmet)
        let equipmentIcon = UIImage(named: Constants.UI.catapult)
        let images = [catalogIcon, humanIcon, equipmentIcon]

        self.setViewControllers(setupViewControllers(), animated: true)
        self.tabBar.tintColor = .systemMint
        self.tabBar.unselectedItemTintColor = .systemGray
        self.tabBar.backgroundColor = .clear
        guard let items = self.tabBar.items else { return }

        for x in 0..<images.count {
            items[x].image = images[x]
        }
    }

    private func setupViewControllers() -> [UIViewController] {
        let catalogVC = UINavigationController(rootViewController: CatalogViewController())
        let humanVC = UINavigationController(rootViewController: SafaryMapViewController())
        let eqipmentVC = UINavigationController(rootViewController: EquipmentLossesViewController())
        let controllers = [catalogVC, humanVC, eqipmentVC]
        return controllers
    }
}

