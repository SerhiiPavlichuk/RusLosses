//
//  EquipmentViewModel.swift
//  RusLosses
//
//  Created by admin on 05.07.2022.
//

import Foundation

class EquipmentViewModel {

    var equipments: [Equipment] = []
//    var equip: Equipment?

    func loadEquip(completion: @escaping(() -> ())) {
        NetworkManager.shared.performEquipmentRequest(completion: { equip in
            self.equipments = equip
//            let dataArray = equip
//            let detailEquip = dataArray.last
//            self.equip = detailEquip
            completion()

        })
    }
}
