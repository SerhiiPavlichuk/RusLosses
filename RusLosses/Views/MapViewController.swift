//
//  MapViewController.swift
//  RusLosses
//
//  Created by admin on 05.07.2022.
//

import UIKit
import WebKit

class MapViewController: UIViewController {

    //MARK: - Activity Indicator Property

    private lazy var activityIndicator: UIActivityIndicatorView = {
        let activityIndicator = UIActivityIndicatorView(style: UIActivityIndicatorView.Style.large)
        activityIndicator.center = self.view.center
        activityIndicator.hidesWhenStopped = true
        self.view.addSubview(activityIndicator)
        return activityIndicator
    }()

    //MARK: - Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        loadMap()

    }

    //MARK: - Setup Nav & TabBar

    private func setupUI() {
        tabBarController?.tabBar.backgroundColor = UIColor(named: Constants.UI.backgroundColor)
        navigationController?.setupNavigationBar()
        navigationItem.title = Constants.UI.mapTitle
    }

    //MARK: - Load Map

    private func loadMap() {
        let webView = WKWebView()
        webView.navigationDelegate = self
        view = webView

        if let url = URL(string: Constants.Network.mapURL) {
            webView.load(URLRequest(url: url))
        }
    }

    //MARK: - Start & Stop ActivityIndocator animating

    private func showActivityIndicator() {
        activityIndicator.startAnimating()

    }

    private func stopActivityIndicator() {
        activityIndicator.stopAnimating()

    }
}

    //MARK: - WKWebView Delegate

extension MapViewController: WKNavigationDelegate {
    func webView(_ webView: WKWebView, didCommit navigation: WKNavigation!) {
        showActivityIndicator()
        print("Start loading")
    }

    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        stopActivityIndicator()
        print("End loading")
    }
}
