//
//  CatalogViewController.swift
//  RusLosses
//
//  Created by admin on 04.07.2022.
//

import UIKit

class CatalogViewController: UIViewController {

    var equipments: [Equipment] = []
    var orks: [Orks] = []

    private lazy var collectionView: UICollectionView = {
        let collectionView = UICollectionView()

        return collectionView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        loadEquip {
            print(self.equipments)
        }

        loadGoodOrks {
            print(self.orks)
        }


    }

    func loadEquip(completion: @escaping(() -> ())) {
        NetworkManager.shared.performEquipmentRequest(completion: { equip in
            self.equipments = equip
        })
    }
    func loadGoodOrks(completion: @escaping(() -> ())) {
        NetworkManager.shared.performOrksRequest(completion: { orks in
            self.orks = orks
        })
    }
}
