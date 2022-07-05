//
//  CatalogViewModel.swift
//  RusLosses
//
//  Created by admin on 05.07.2022.
//

import Foundation

class CatalogViewModel {

    var equipments: [Equipment] = []
    var orks: [Orks] = []

    func loadEquip(completion: @escaping(() -> ())) {
        NetworkManager.shared.performEquipmentRequest(completion: { equip in
            self.equipments = equip
            completion()
        })
    }
    
    func loadGoodOrks(completion: @escaping(() -> ())) {
        NetworkManager.shared.performOrksRequest(completion: { orks in
            self.orks = orks
            completion()
        })
    }
}
