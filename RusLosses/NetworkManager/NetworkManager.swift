//
//  NetworkManager.swift
//  RusLosses
//
//  Created by admin on 04.07.2022.
//

import Foundation

struct NetworkManager {

    static let shared = NetworkManager()

    func performEquipmentRequest(completion: @escaping(([Equipment]) -> ())) {
        if let url = URL(string: Constants.Network.equipmentURL) {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { data, response, error in
                if let unwrapedData = data {
                    print("Print responce \(responce)")
                    print("Print Data \(unwrapedData)")
                    let decoder = JSONDecoder()
                    do {
                        let decodeData = try decoder.decode([Equipment].self, from: unwrapedData)
                        completion(decodeData)
                    } catch {
                        print(error)
                    }
                }

//                let json = try! JSONDecoder().decode([Equipment].self, from: data!)
//                for item in json {
//
//                    let date = item.date
//                    let day = item.day
//                    let aircraft = item.aircraft
//                    let helicopter = item.helicopter
//                    let tank = item.tank
//                    let APC = item.APC
//                    let artillery = item.artillery
//                    let MRL = item.MRL
//                    let militaryAuto = item.militaryAuto
//                    let fuelTank = item.fuelTank
//                    let drone = item.drone
//                    let navalShip = item.navalShip
//                    let antiAircraft = item.antiAircraft
//                    let specialEquipment = item.specialEquip
//                    let mobileSRBM = item.mobileSRBM
//                    let vehicles = item.vehiclesAndFuelTanks
//                    let cruiseMissiles = item.cruiseMissiles
//
//                    let newEquip = Equipment(date: date, day: day, aircraft: aircraft, helicopter: helicopter, tank: tank, APC: APC, artillery: artillery, MRL: MRL, militaryAuto: militaryAuto, fuelTank: fuelTank, drone: drone, navalShip: navalShip, antiAircraft: antiAircraft, specialEquip: specialEquipment, mobileSRBM: mobileSRBM, vehiclesAndFuelTanks: vehicles, cruiseMissiles: cruiseMissiles)


                }
            task.resume()
            }
        }
    }

