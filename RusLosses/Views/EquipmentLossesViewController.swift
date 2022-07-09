//
//  EquipmentLossesViewController.swift
//  RusLosses
//
//  Created by admin on 04.07.2022.
//

import UIKit

class EquipmentLossesViewController: UIViewController {

    //MARK: - MainView Property

    private let mainView = EquipmentView()

    //MARK: - Life cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBarController?.tabBar.isHidden = true

    }

    // loadView

    override func loadView() {
        view = mainView
    }

//    override func viewDidLayoutSubviews() {
//        super.viewDidLayoutSubviews()
//        setupViews()
//    }

    override func viewWillDisappear(_ animated: Bool) {
        self.tabBarController?.tabBar.isHidden = false

    }

    // doesn't look pretty
    func setupUI(_ equip: Equipment) {
        if let aircraftCount = equip.aircraft {
            mainView.aircraftTitle.text = "Destroyed \(aircraftCount) aircrafts"

        }

        if let helicoptersCount = equip.helicopter {
            mainView.helicopterTitle.text = "Destroyed \(helicoptersCount) helicopters"

        }

        if let tankCount = equip.tank {
            mainView.tankTitle.text = "Destroyed \(tankCount) tanks"

        }

        if let apcCount = equip.APC {
            mainView.apcTitle.text = "Destroyed \(apcCount) APC"
        }

        if let artilleryCount = equip.artillery {
            mainView.artilleryTitle.text = "Destroyed \(artilleryCount) artillery"
        }

        if let mrlCount = equip.MRL {
            mainView.mrlTitle.text = "Destroyed \(mrlCount) MRL"
        }

        if let militaryCount = equip.militaryAuto {
            mainView.militaryTitle.text = "Destroyed \(militaryCount) militaryAuto"
        }

        if let fuelTanksCount = equip.fuelTank {
            mainView.fuelTankTitle.text = "Destroyed \(fuelTanksCount) fueltanks"
        }

        if let droneCount = equip.drone {
            mainView.droneTitle.text = "Destroyed \(droneCount) drones"
        }

        if let navalShipCount = equip.navalShip {
            mainView.navalShipTitle.text = "Destroyed \(navalShipCount) ships"
        }

        if let antiAircraftCount = equip.antiAircraft {
            mainView.antiAircraftTitle.text = "Destroyed \(antiAircraftCount) antiAircrafts"
        }

        if let specialEquipCount = equip.specialEquip {
            mainView.specialEquipTitle.text = "Destroyed \(specialEquipCount) equips"
        }

        if let srbmCount = equip.mobileSRBM {
            mainView.mobileSRBMTitle.text = "Destroyed \(srbmCount) srbm"
        }

        if let misslesCount = equip.cruiseMissiles {
            mainView.cruiseMissilesTitle.text = "Destroyed \(misslesCount) missles"
        }
    }
}

