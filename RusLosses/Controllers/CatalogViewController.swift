//
//  CatalogViewController.swift
//  RusLosses
//
//  Created by admin on 04.07.2022.
//

import UIKit

class CatalogViewController: UIViewController {

    var equipments: [Equipment] = []

    override func viewDidLoad() {
        super.viewDidLoad()

//        networkManager.delegate = self
//        networkManager.performEquipmentRequest()
        loadEquip {
            print(self.equipments)
        }
    }

    func loadEquip(completion: @escaping(() -> ())) {
        NetworkManager.shared.performEquipmentRequest(completion: { equip in
            self.equipments = equip
        })
    }

//extension CatalogViewController: NetworkManagerDelegate {
//    func didLoadEquipment(_ networkManager: NetworkManager, equip: Equipment) {
//        equipments.append(equip)
//    }
//
//    func didFailWithError(error: Error) {
//        fatalError()
//    }
//
//
//}
}
