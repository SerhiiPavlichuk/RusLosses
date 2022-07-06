//
//  SafaryMapViewController.swift
//  RusLosses
//
//  Created by admin on 05.07.2022.
//

import UIKit
import SafariServices

class SafaryMapViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        loadMap()
    }

    private func loadMap() {
        if let link = URL(string: Constants.Network.mapURL){
            let myrequest = SFSafariViewController(url: link)
            myrequest.delegate = self
            present(myrequest, animated:true)

        }
    }
}

extension SafaryMapViewController: SFSafariViewControllerDelegate {
    func safariViewControllerDidFinish(_ controller: SFSafariViewController) {
        self.dismiss(animated: true) {
            self.tabBarController?.selectedIndex = 0
            self.tabBarController?.viewDidLoad()

        }
    }
}
