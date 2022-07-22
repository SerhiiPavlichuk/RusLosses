//
//  EquipmentViewModel.swift
//  RusLosses
//
//  Created by admin on 05.07.2022.
//

import Foundation
import WidgetKit

class EquipmentViewModel {

    var equipments: [Equipment] = []
    var notReversed: [Equipment] = []
    var reversed: [Equipment] = []

    func loadEquip(completion: @escaping(() -> ())) {
        NetworkManager.shared.performEquipmentRequest(completion: { equip in
            self.equipments = equip
            self.notReversed = equip
            self.reversed = equip.reversed()

            // save in userDefaults for usings this fata in widget
            if let userDefaults = UserDefaults(suiteName: "group.equipments") {
                userDefaults.setValue(equip.last?.day, forKey: "day")
                userDefaults.setValue(equip.last?.tank, forKey: "tank")
                userDefaults.setValue(equip.last?.APC, forKey: "APC")
                userDefaults.setValue(equip.last?.helicopter, forKey: "helicopter")
                userDefaults.setValue(equip.last?.artillery, forKey: "artillery")
                userDefaults.setValue(equip.last?.aircraft, forKey: "aircraft")
                userDefaults.setValue(equip.last?.MRL, forKey: "MRL")
                userDefaults.setValue(equip.last?.drone, forKey: "drone")
                userDefaults.setValue(equip.last?.navalShip, forKey: "navalShip")

            }
            // reload Widget
            WidgetCenter.shared.reloadAllTimelines()
            completion()

        })
    }

    func convertToArray(_ equip: Equipment?) -> [LossesData] {
        var lossesDataArray: [LossesData] = []
        if let aircrafts = equip?.aircraft {
            lossesDataArray.append((LossesData(title: "Aircraft destroyed: ",
                                               amount: aircrafts,
                                               image: .jet)))
        }

        if let helicopters = equip?.helicopter {
            lossesDataArray.append((LossesData(title: "Helicopter destroyed: ",
                                               amount: helicopters,
                                               image: .helicopter)))
        }

        if let tanks = equip?.tank {
            lossesDataArray.append((LossesData(title: "Tank destroyed: ",
                                               amount: tanks,
                                               image: .tank)))
        }

        if let apcs = equip?.APC {
            lossesDataArray.append((LossesData(title: "APC destroyed: ",
                                               amount: apcs,
                                               image: .APC)))
        }

        if let artilleries = equip?.artillery {
            lossesDataArray.append((LossesData(title: "Artillery destroyed: ",
                                               amount: artilleries,
                                               image: .artillery)))
        }

        if let mrls = equip?.MRL {
            lossesDataArray.append((LossesData(title: "MRL destroyed: ",
                                               amount: mrls,
                                               image: .MRL)))
        }

        if let militaryAutos = equip?.militaryAuto {
            lossesDataArray.append((LossesData(title: "MilitaryAuto destroyed: ",
                                               amount: militaryAutos,
                                               image: .militaryAuto)))
        }

        if let fuelTanks = equip?.fuelTank {
            lossesDataArray.append((LossesData(title: "FuelTank destroyed: ",
                                               amount: fuelTanks,
                                               image: .fuelTank)))
        }

        if let drones = equip?.drone {
            lossesDataArray.append((LossesData(title: "Drone destroyed: ",
                                               amount: drones,
                                               image: .drone)))
        }

        if let navalShips = equip?.navalShip {
            lossesDataArray.append((LossesData(title: "NavalShip destroyed: ",
                                               amount: navalShips,
                                               image: .ship)))
        }

        if let antiAircrafts = equip?.antiAircraft {
            lossesDataArray.append((LossesData(title: "AntiAircraft destroyed: ",
                                               amount: antiAircrafts,
                                               image: .airDefense)))
        }

        if let specialEquips = equip?.specialEquip {
            lossesDataArray.append((LossesData(title: "Special Equip destroyed: ",
                                               amount: specialEquips,
                                               image: .specialEquip)))
        }

        if let missiles = equip?.cruiseMissiles {
            lossesDataArray.append((LossesData(title: "CruiseMissiles destroyed: ",
                                               amount: missiles,
                                               image: .missle)))
        }

        if let vehiclesAndFuelTanks = equip?.vehiclesAndFuelTanks {
            lossesDataArray.append((LossesData(title: "Vehicles and fueltanks: ",
                                               amount: vehiclesAndFuelTanks,
                                               image: .fuelTank)))
        }

        return lossesDataArray
    }
}
