//
//  Constans.swift
//  RusLosses
//
//  Created by admin on 04.07.2022.
//

import Foundation
struct Constants {

    struct Network {
        static let equipmentURL = "https://raw.githubusercontent.com/MacPaw/2022-Ukraine-Russia-War-Dataset/main/data/russia_losses_equipment.json"
        static let orksURL = "https://raw.githubusercontent.com/MacPaw/2022-Ukraine-Russia-War-Dataset/main/data/russia_losses_personnel.json"
        static let mapURL = "https://deepstatemap.live/"
    }

    struct UI {
        static let documents = "documents"
        static let helmet = "helmet"
        static let catapult = "catapult"
        static let goodOrk = "goodOrk"
        static let title = "Enemy Losses"
    }
}
