//
//  EquipmentViewModel.swift
//  RusLosses
//
//  Created by admin on 05.07.2022.
//

import Foundation

class EquipmentViewModel {

    var equipments: [Equipment] = []

    func loadEquip(completion: @escaping(() -> ())) {
        NetworkManager.shared.performEquipmentRequest(completion: { equip in
            self.equipments = equip
            completion()

        })
    }
}
