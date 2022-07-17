//
//  UINavigationController+Extension.swift
//  RusLosses
//
//  Created by admin on 15.07.2022.
//

import UIKit
extension UINavigationController {

    public func setupNavigationBar() {
        let coloredAppearance = UINavigationBarAppearance()
        coloredAppearance.configureWithOpaqueBackground()
        coloredAppearance.backgroundColor = UIColor(named: Constants.UI.backgroundColor)
        coloredAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        coloredAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        navigationBar.standardAppearance = coloredAppearance
        navigationBar.scrollEdgeAppearance = coloredAppearance
        navigationBar.tintColor = UIColor.white

    }
}
