//
//  Constans.swift
//  RusLosses
//
//  Created by admin on 04.07.2022.
//

import Foundation
import UIKit
struct Constants {

    struct Network {
        static let equipmentURL = "https://raw.githubusercontent.com/MacPaw/2022-Ukraine-Russia-War-Dataset/main/data/russia_losses_equipment.json"
        static let orksURL = "https://raw.githubusercontent.com/MacPaw/2022-Ukraine-Russia-War-Dataset/main/data/russia_losses_personnel.json"
        static let mapURL = "https://deepstatemap.live/"
    }

    struct UI {
        static let title = "Enemy Losses"
        static let mapTitle = "Invasion map"
        static let backgroundColor = "backgroundColor"
        static let sortedButton = UIImage(systemName: "line.horizontal.3.decrease.circle")
        static let alertTitle = "Change Data Displaying"
        static let alertMessage = "You can change displaying data from 1st invasion day to last and vice versa"
        static let alertActionFirstDayTitle = "From 1st day"
    }
}
