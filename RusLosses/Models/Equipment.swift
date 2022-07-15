//
//  Equipment.swift
//  RusLosses
//
//  Created by admin on 04.07.2022.
//

import Foundation

struct Equipment: Codable {
    let date: String?
    let day: Int?
    let aircraft: Int?
    let helicopter: Int?
    let tank: Int?
    let APC: Int?
    let artillery: Int?
    let MRL: Int?
    let militaryAuto: Int?
    let fuelTank: Int?
    let drone: Int?
    let navalShip: Int?
    let antiAircraft: Int?
    let specialEquip: Int?
    let mobileSRBM: Int?
    let vehiclesAndFuelTanks: Int?
    let cruiseMissiles: Int?

    func convertToArray() -> [LossesData] {
        return [LossesData(title: "Aircraft destroyed: ",
                           amount: self.aircraft,
                           image: .jet),
                LossesData(title: "Helicopter destroyed: ",
                                   amount: self.helicopter,
                                   image: .helicopter),
                LossesData(title: "Tank destroyed: ",
                                   amount: self.tank,
                                   image: .tank),
                LossesData(title: "APC destroyed: ",
                                   amount: self.APC,
                                   image: .APC),
                LossesData(title: "Artillery destroyed: ",
                                   amount: self.artillery,
                                   image: .artillery),
                LossesData(title: "MRL destroyed: ",
                                   amount: self.MRL,
                                   image: .MRL),
                LossesData(title: "MilitaryAuto destroyed: ",
                                   amount: self.militaryAuto,
                                   image: .militaryAuto),
                LossesData(title: "FuelTank destroyed: ",
                                   amount: self.fuelTank,
                                   image: .fuelTank),
                LossesData(title: "Drone destroyed: ",
                                   amount: self.drone,
                                   image: .drone),
                LossesData(title: "NavalShip destroyed: ",
                                   amount: self.navalShip,
                                   image: .ship),
                LossesData(title: "AntiAircraft destroyed: ",
                                   amount: self.antiAircraft,
                           image: .airDefense),
                LossesData(title: "SpecialEquip destroyed: ",
                                   amount: self.specialEquip,
                                   image: .specialEquip),
                LossesData(title: "CruiseMissiles destroyed: ",
                                   amount: self.cruiseMissiles,
                           image: .missle)
        ]
    }

    enum CodingKeys: String, CodingKey {
        case date = "date"
        case day = "day"
        case aircraft = "aircraft"
        case helicopter = "helicopter"
        case tank = "tank"
        case APC = "APC"
        case artillery = "field artillery"
        case MRL = "MRL"
        case militaryAuto = "military auto"
        case fuelTank = "fuel tank"
        case drone = "drone"
        case navalShip = "naval ship"
        case antiAircraft = "anti-aircraft warfare"
        case specialEquip = "special equipment"
        case mobileSRBM = "mobile SRBM system"
        case vehiclesAndFuelTanks = "vehicles and fuel tanks"
        case cruiseMissiles = "cruise missiles"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        date = try? values.decode(String.self, forKey: .date)
        day = try? values.decode(Int.self, forKey: .day)
        aircraft = try? values.decode(Int.self, forKey: .aircraft)
        helicopter = try? values.decode(Int.self, forKey: .helicopter)
        tank = try? values.decode(Int.self, forKey: .tank)
        APC = try? values.decode(Int.self, forKey: .APC)
        artillery = try? values.decode(Int.self, forKey: .artillery)
        MRL = try? values.decode(Int.self, forKey: .MRL)
        militaryAuto = try? values.decode(Int.self, forKey: .militaryAuto)
        fuelTank = try? values.decode(Int.self, forKey: .fuelTank)
        drone = try? values.decode(Int.self, forKey: .drone)
        navalShip = try? values.decode(Int.self, forKey: .navalShip)
        antiAircraft = try? values.decode(Int.self, forKey: .antiAircraft)
        specialEquip = try? values.decode(Int.self, forKey: .specialEquip)
        mobileSRBM = try? values.decode(Int.self, forKey: .mobileSRBM)
        vehiclesAndFuelTanks = try? values.decode(Int.self, forKey: .vehiclesAndFuelTanks)
        cruiseMissiles = try? values.decode(Int.self, forKey: .cruiseMissiles)
    }
}
