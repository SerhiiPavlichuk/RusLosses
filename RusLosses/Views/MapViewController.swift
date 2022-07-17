//
//  MapViewController.swift
//  RusLosses
//
//  Created by admin on 05.07.2022.
//

import UIKit
import WebKit

class MapViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        loadMap()

    }

    private func setupUI() {
        tabBarController?.tabBar.backgroundColor = UIColor(named: Constants.UI.backgroundColor)
        navigationController?.setupNavigationBar()
        navigationItem.title = Constants.UI.mapTitle
    }

    private func loadMap() {
        let webView = WKWebView()
        view = webView

        if let url = URL(string: Constants.Network.mapURL) {
            webView.load(URLRequest(url: url))
        }
    }
}
