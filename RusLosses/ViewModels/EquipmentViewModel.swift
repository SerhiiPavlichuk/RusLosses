//
//  EquipmentViewModel.swift
//  RusLosses
//
//  Created by admin on 05.07.2022.
//

import Foundation

class EquipmentViewModel {

    var equipments: [Equipment] = []
    var notReversed: [Equipment] = []
    var reversed: [Equipment] = []

    func loadEquip(completion: @escaping(() -> ())) {
        NetworkManager.shared.performEquipmentRequest(completion: { equip in
            self.equipments = equip
            self.notReversed = equip
            self.reversed = equip.reversed()
            completion()

        })
    }
}
