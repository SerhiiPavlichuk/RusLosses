//
//  EquipmentView.swift
//  RusLosses
//
//  Created by admin on 09.07.2022.
//

import UIKit

class EquipmentView: UIView {

    //MARK: - Properties
    
    private lazy var scrollView: UIScrollView = {
      let scrollView = UIScrollView()
      return scrollView
    }()

    private lazy var contentView: UIView = {
        let contentView = UIView()
        return contentView
    }()

    private lazy var containerAircraftView: UIView = {
        let containerAircraftView = UIView()
        containerAircraftView.backgroundColor = .systemGray
        containerAircraftView.layer.cornerRadius = 20
        containerAircraftView.layer.borderWidth = 2
        containerAircraftView.layer.borderColor = UIColor.systemGray6.cgColor
        return containerAircraftView
    }()

    private lazy var aircraftImageView: UIImageView = {
        let aircraftImageView = UIImageView()
        aircraftImageView.image = .jet
        return aircraftImageView
    }()

    lazy var aircraftTitle: UILabel = {
        let aircraftTitle = UILabel()
        aircraftTitle.numberOfLines = 0
        aircraftTitle.font = .systemFont(ofSize: 20, weight: .semibold)
        return aircraftTitle
    }()

    private lazy var containerHelicopterView: UIView = {
        let containerHelicopterView = UIView()
        containerHelicopterView.backgroundColor = .systemGray
        containerHelicopterView.layer.cornerRadius = 20
        containerHelicopterView.layer.borderWidth = 2
        containerHelicopterView.layer.borderColor = UIColor.systemGray6.cgColor
        return containerHelicopterView
    }()

    private lazy var helicopterImageView: UIImageView = {
        let aircraftImageView = UIImageView()
        aircraftImageView.image = .helicopter
        return aircraftImageView
    }()

    lazy var helicopterTitle: UILabel = {
        let helicopterTitle = UILabel()
        helicopterTitle.numberOfLines = 0
        helicopterTitle.font = .systemFont(ofSize: 20, weight: .semibold)
        return helicopterTitle
    }()

    private lazy var containerTankView: UIView = {
        let containerTankView = UIView()
        containerTankView.backgroundColor = .systemGray
        containerTankView.layer.cornerRadius = 20
        containerTankView.layer.borderWidth = 2
        containerTankView.layer.borderColor = UIColor.systemGray6.cgColor
        return containerTankView
    }()

    private lazy var tankImageView: UIImageView = {
        let tankImageView = UIImageView()
        tankImageView.image = .tank
        return tankImageView
    }()

    lazy var tankTitle: UILabel = {
        let tankTitle = UILabel()
        tankTitle.numberOfLines = 0
        tankTitle.font = .systemFont(ofSize: 20, weight: .semibold)
        return tankTitle
    }()

    private lazy var containerAPCView: UIView = {
        let containerAPCView = UIView()
        containerAPCView.backgroundColor = .systemGray
        containerAPCView.layer.cornerRadius = 20
        containerAPCView.layer.borderWidth = 2
        containerAPCView.layer.borderColor = UIColor.systemGray6.cgColor
        return containerAPCView
    }()

    private lazy var apcImageView: UIImageView = {
        let apcImageView = UIImageView()
        apcImageView.image = .APC
        return apcImageView
    }()

    lazy var apcTitle: UILabel = {
        let apcTitle = UILabel()
        apcTitle.numberOfLines = 0
        apcTitle.font = .systemFont(ofSize: 20, weight: .semibold)
        return apcTitle
    }()

    private lazy var containerArtilleryView: UIView = {
        let containerArtilleryView = UIView()
        containerArtilleryView.backgroundColor = .systemGray
        containerArtilleryView.layer.cornerRadius = 20
        containerArtilleryView.layer.borderWidth = 2
        containerArtilleryView.layer.borderColor = UIColor.systemGray6.cgColor
        return containerArtilleryView
    }()

    private lazy var artilleryImageView: UIImageView = {
        let artilleryImageView = UIImageView()
        artilleryImageView.image = .artillery
        return artilleryImageView
    }()

    lazy var artilleryTitle: UILabel = {
        let artilleryTitle = UILabel()
        artilleryTitle.numberOfLines = 0
        artilleryTitle.font = .systemFont(ofSize: 20, weight: .semibold)
        return artilleryTitle
    }()

    private lazy var containerMRLView: UIView = {
        let containerMRLView = UIView()
        containerMRLView.backgroundColor = .systemGray
        containerMRLView.layer.cornerRadius = 20
        containerMRLView.layer.borderWidth = 2
        containerMRLView.layer.borderColor = UIColor.systemGray6.cgColor
        return containerMRLView
    }()

    private lazy var mrlImageView: UIImageView = {
        let mrlImageView = UIImageView()
        mrlImageView.image = .MRL
        return mrlImageView
    }()

    lazy var mrlTitle: UILabel = {
        let mrlTitle = UILabel()
        mrlTitle.numberOfLines = 0
        mrlTitle.font = .systemFont(ofSize: 20, weight: .semibold)
        return mrlTitle
    }()

    private lazy var containerMilitaryAutoView: UIView = {
        let containerMilitaryAutoView = UIView()
        containerMilitaryAutoView.backgroundColor = .systemGray
        containerMilitaryAutoView.layer.cornerRadius = 20
        containerMilitaryAutoView.layer.borderWidth = 2
        containerMilitaryAutoView.layer.borderColor = UIColor.systemGray6.cgColor
        return containerMilitaryAutoView
    }()

    private lazy var militaryAutoImageView: UIImageView = {
        let militaryAutoImageView = UIImageView()
        militaryAutoImageView.image = .militaryAuto
        return militaryAutoImageView
    }()


    lazy var militaryTitle: UILabel = {
        let militaryTitle = UILabel()
        militaryTitle.numberOfLines = 0
        militaryTitle.font = .systemFont(ofSize: 20, weight: .semibold)
        return militaryTitle
    }()

    private lazy var containerFuelTankView: UIView = {
        let containerFuelTankView = UIView()
        containerFuelTankView.backgroundColor = .systemGray
        containerFuelTankView.layer.cornerRadius = 20
        containerFuelTankView.layer.borderWidth = 2
        containerFuelTankView.layer.borderColor = UIColor.systemGray6.cgColor
        return containerFuelTankView
    }()

    private lazy var fuelTankImageView: UIImageView = {
        let fuelTankImageView = UIImageView()
        fuelTankImageView.image = .fuelTank
        return fuelTankImageView
    }()


    lazy var fuelTankTitle: UILabel = {
        let fuelTankTitle = UILabel()
        fuelTankTitle.numberOfLines = 0
        fuelTankTitle.font = .systemFont(ofSize: 20, weight: .semibold)
        return fuelTankTitle
    }()

    private lazy var containerDroneView: UIView = {
        let containerDroneView = UIView()
        containerDroneView.backgroundColor = .systemGray
        containerDroneView.layer.cornerRadius = 20
        containerDroneView.layer.borderWidth = 2
        containerDroneView.layer.borderColor = UIColor.systemGray6.cgColor
        return containerDroneView
    }()

    private lazy var droneImageView: UIImageView = {
        let droneImageView = UIImageView()
        droneImageView.image = .drone
        return droneImageView
    }()


    lazy var droneTitle: UILabel = {
        let droneTitle = UILabel()
        droneTitle.numberOfLines = 0
        droneTitle.font = .systemFont(ofSize: 20, weight: .semibold)
        return droneTitle
    }()

    private lazy var containerNavalShipView: UIView = {
        let containerNavalShipView = UIView()
        containerNavalShipView.backgroundColor = .systemGray
        containerNavalShipView.layer.cornerRadius = 20
        containerNavalShipView.layer.borderWidth = 2
        containerNavalShipView.layer.borderColor = UIColor.systemGray6.cgColor
        return containerNavalShipView
    }()

    private lazy var navalShipImageView: UIImageView = {
        let navalShipImageView = UIImageView()
        navalShipImageView.image = .ship
        return navalShipImageView
    }()


    lazy var navalShipTitle: UILabel = {
        let navalShipTitle = UILabel()
        navalShipTitle.numberOfLines = 0
        navalShipTitle.font = .systemFont(ofSize: 20, weight: .semibold)
        return navalShipTitle
    }()

    private lazy var containerAntiAircraft: UIView = {
        let containerAntiAircraft = UIView()
        containerAntiAircraft.backgroundColor = .systemGray
        containerAntiAircraft.layer.cornerRadius = 20
        containerAntiAircraft.layer.borderWidth = 2
        containerAntiAircraft.layer.borderColor = UIColor.systemGray6.cgColor
        return containerAntiAircraft
    }()

    private lazy var antiAircraftImageView: UIImageView = {
        let antiAircraftImageView = UIImageView()
        antiAircraftImageView.image = .airDefense
        return antiAircraftImageView
    }()


    lazy var antiAircraftTitle: UILabel = {
        let antiAircraftTitle = UILabel()
        antiAircraftTitle.numberOfLines = 0
        antiAircraftTitle.font = .systemFont(ofSize: 20, weight: .semibold)
        return antiAircraftTitle
    }()

    private lazy var containerSpecialEquip: UIView = {
        let containerSpecialEquip = UIView()
        containerSpecialEquip.backgroundColor = .systemGray
        containerSpecialEquip.layer.cornerRadius = 20
        containerSpecialEquip.layer.borderWidth = 2
        containerSpecialEquip.layer.borderColor = UIColor.systemGray6.cgColor
        return containerSpecialEquip
    }()

    private lazy var specialEquipImageView: UIImageView = {
        let specialEquipImageView = UIImageView()
        specialEquipImageView.image = .specialEquip
        return specialEquipImageView
    }()


    lazy var specialEquipTitle: UILabel = {
        let specialEquipTitle = UILabel()
        specialEquipTitle.numberOfLines = 0
        specialEquipTitle.font = .systemFont(ofSize: 20, weight: .semibold)
        return specialEquipTitle
    }()

    private lazy var containerMobileSRBM: UIView = {
        let containerMobileSRBM = UIView()
        containerMobileSRBM.backgroundColor = .systemGray
        containerMobileSRBM.layer.cornerRadius = 20
        containerMobileSRBM.layer.borderWidth = 2
        containerMobileSRBM.layer.borderColor = UIColor.systemGray6.cgColor
        return containerMobileSRBM
    }()

    private lazy var mobileSRBMImageView: UIImageView = {
        let mobileSRBMImageView = UIImageView()
        mobileSRBMImageView.image = .mobileSRBM
        return mobileSRBMImageView
    }()


    lazy var mobileSRBMTitle: UILabel = {
        let mobileSRBMTitle = UILabel()
        mobileSRBMTitle.numberOfLines = 0
        mobileSRBMTitle.font = .systemFont(ofSize: 20, weight: .semibold)
        return mobileSRBMTitle
    }()

    private lazy var containerCruiseMissiles: UIView = {
        let containerCruiseMissiles = UIView()
        containerCruiseMissiles.backgroundColor = .systemGray
        containerCruiseMissiles.layer.cornerRadius = 20
        containerCruiseMissiles.layer.borderWidth = 2
        containerCruiseMissiles.layer.borderColor = UIColor.systemGray6.cgColor
        return containerCruiseMissiles
    }()

    private lazy var cruiseMissilesImageView: UIImageView = {
        let cruiseMissilesImageView = UIImageView()
        cruiseMissilesImageView.image = .mobileSRBM
        return cruiseMissilesImageView
    }()


    lazy var cruiseMissilesTitle: UILabel = {
        let cruiseMissilesTitle = UILabel()
        cruiseMissilesTitle.numberOfLines = 0
        cruiseMissilesTitle.font = .systemFont(ofSize: 20, weight: .semibold)
        return cruiseMissilesTitle
    }()
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        setupViews()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

private extension EquipmentView {

    //MARK: - SetupViews
    
    func setupViews() {
        [scrollView, contentView, containerAircraftView, containerHelicopterView, containerTankView, containerAPCView, containerArtilleryView, containerMRLView, containerMilitaryAutoView, aircraftImageView, aircraftTitle, helicopterImageView, helicopterTitle, tankImageView, tankTitle, apcImageView, apcTitle, artilleryImageView, artilleryTitle, mrlImageView, mrlTitle, militaryAutoImageView, militaryTitle, containerFuelTankView, fuelTankImageView, fuelTankTitle, containerDroneView, droneImageView, droneTitle, containerNavalShipView, navalShipImageView, navalShipTitle, containerAntiAircraft, antiAircraftImageView, antiAircraftTitle, containerSpecialEquip, specialEquipImageView, specialEquipTitle, containerMobileSRBM, mobileSRBMImageView, mobileSRBMTitle, containerCruiseMissiles, cruiseMissilesImageView, cruiseMissilesTitle].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
        }

        addSubview(scrollView)
        scrollView.addSubview(contentView)
        contentView.addSubview(containerAircraftView)
        contentView.addSubview(containerHelicopterView)
        contentView.addSubview(containerTankView)
        contentView.addSubview(containerAPCView)
        contentView.addSubview(containerArtilleryView)
        contentView.addSubview(containerMRLView)
        contentView.addSubview(containerMilitaryAutoView)
        contentView.addSubview(containerFuelTankView)
        contentView.addSubview(containerDroneView)
        contentView.addSubview(containerNavalShipView)
        contentView.addSubview(containerAntiAircraft)
        contentView.addSubview(containerSpecialEquip)
        contentView.addSubview(containerMobileSRBM)
        contentView.addSubview(containerCruiseMissiles)

        containerAircraftView.addSubview(aircraftImageView)
        containerAircraftView.addSubview(aircraftTitle)
        containerHelicopterView.addSubview(helicopterImageView)
        containerHelicopterView.addSubview(helicopterTitle)
        containerTankView.addSubview(tankImageView)
        containerTankView.addSubview(tankTitle)
        containerAPCView.addSubview(apcImageView)
        containerAPCView.addSubview(apcTitle)
        containerArtilleryView.addSubview(artilleryImageView)
        containerArtilleryView.addSubview(artilleryTitle)
        containerMRLView.addSubview(mrlImageView)
        containerMRLView.addSubview(mrlTitle)
        containerMilitaryAutoView.addSubview(militaryAutoImageView)
        containerMilitaryAutoView.addSubview(militaryTitle)
        containerFuelTankView.addSubview(fuelTankImageView)
        containerFuelTankView.addSubview(fuelTankTitle)
        containerDroneView.addSubview(droneImageView)
        containerDroneView.addSubview(droneTitle)
        containerNavalShipView.addSubview(navalShipImageView)
        containerNavalShipView.addSubview(navalShipTitle)
        containerAntiAircraft.addSubview(antiAircraftImageView)
        containerAntiAircraft.addSubview(antiAircraftTitle)
        containerSpecialEquip.addSubview(specialEquipImageView)
        containerSpecialEquip.addSubview(specialEquipTitle)
        containerMobileSRBM.addSubview(mobileSRBMImageView)
        containerMobileSRBM.addSubview(mobileSRBMTitle)
        containerCruiseMissiles.addSubview(cruiseMissilesImageView)
        containerCruiseMissiles.addSubview(cruiseMissilesTitle)

        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(
                equalTo: self.topAnchor),
            scrollView.rightAnchor.constraint(
                equalTo: self.rightAnchor),
            scrollView.bottomAnchor.constraint(
                equalTo: self.bottomAnchor),
            scrollView.leftAnchor.constraint(
                equalTo: self.leftAnchor),

            contentView.topAnchor.constraint(
                equalTo: scrollView.topAnchor),
            contentView.rightAnchor.constraint(
                equalTo: scrollView.rightAnchor),
            contentView.bottomAnchor.constraint(
                equalTo: scrollView.bottomAnchor),
            contentView.leftAnchor.constraint(
                equalTo: scrollView.leftAnchor),
            contentView.widthAnchor.constraint(
                equalTo: scrollView.widthAnchor),

            containerAircraftView.leadingAnchor.constraint(
                equalTo: contentView.leadingAnchor, constant: 10),
            containerAircraftView.trailingAnchor.constraint(
                equalTo: contentView.trailingAnchor, constant: -10),
            containerAircraftView.topAnchor.constraint(
                equalTo: contentView.safeAreaLayoutGuide.topAnchor),
            containerAircraftView.heightAnchor.constraint(
                equalToConstant: 50),

            aircraftImageView.leadingAnchor.constraint(
                equalTo: containerAircraftView.leadingAnchor, constant: 10),
            aircraftImageView.widthAnchor.constraint(
                equalToConstant: 50),
            aircraftImageView.topAnchor.constraint(
                equalTo: containerAircraftView.topAnchor),
            aircraftImageView.heightAnchor.constraint(
                equalToConstant: 50),

            aircraftTitle.topAnchor.constraint(
                equalTo: containerAircraftView.topAnchor, constant: 15),
            aircraftTitle.leadingAnchor.constraint(
                equalTo: containerAircraftView.leadingAnchor, constant: 70),
            aircraftTitle.trailingAnchor.constraint(
                equalTo: containerAircraftView.trailingAnchor, constant: -5),

            containerHelicopterView.leadingAnchor.constraint(
                equalTo: contentView.leadingAnchor, constant: 10),
            containerHelicopterView.trailingAnchor.constraint(
                equalTo: contentView.trailingAnchor, constant: -10),
            containerHelicopterView.topAnchor.constraint(
                equalTo: containerAircraftView.bottomAnchor, constant: 10),
            containerHelicopterView.heightAnchor.constraint(
                equalToConstant: 50),

            helicopterImageView.leadingAnchor.constraint(
                equalTo: containerHelicopterView.leadingAnchor, constant: 10),
            helicopterImageView.widthAnchor.constraint(
                equalToConstant: 50),
            helicopterImageView.topAnchor.constraint(
                equalTo: containerHelicopterView.topAnchor),
            helicopterImageView.heightAnchor.constraint(
                equalToConstant: 50),

            helicopterTitle.topAnchor.constraint(
                equalTo: containerHelicopterView.topAnchor, constant: 15),
            helicopterTitle.leadingAnchor.constraint(
                equalTo: containerHelicopterView.leadingAnchor, constant: 70),
            helicopterTitle.trailingAnchor.constraint(
                equalTo: containerHelicopterView.trailingAnchor, constant: -5),

            containerTankView.leadingAnchor.constraint(
                equalTo: contentView.leadingAnchor, constant: 10),
            containerTankView.trailingAnchor.constraint(
                equalTo: contentView.trailingAnchor, constant: -10),
            containerTankView.topAnchor.constraint(
                equalTo: containerHelicopterView.bottomAnchor, constant: 10),
            containerTankView.heightAnchor.constraint(
                equalToConstant: 50),

            tankImageView.leadingAnchor.constraint(
                equalTo: containerTankView.leadingAnchor, constant: 10),
            tankImageView.widthAnchor.constraint(
                equalToConstant: 50),
            tankImageView.topAnchor.constraint(
                equalTo: containerTankView.topAnchor),
            tankImageView.heightAnchor.constraint(
                equalToConstant: 50),

            tankTitle.topAnchor.constraint(
                equalTo: containerTankView.topAnchor, constant: 15),
            tankTitle.leadingAnchor.constraint(
                equalTo: containerTankView.leadingAnchor, constant: 70),
            tankTitle.trailingAnchor.constraint(
                equalTo: containerTankView.trailingAnchor, constant: -5),

            containerAPCView.leadingAnchor.constraint(
                equalTo: contentView.leadingAnchor, constant: 10),
            containerAPCView.trailingAnchor.constraint(
                equalTo: contentView.trailingAnchor, constant: -10),
            containerAPCView.topAnchor.constraint(
                equalTo: containerTankView.bottomAnchor, constant: 10),
            containerAPCView.heightAnchor.constraint(
                equalToConstant: 50),

            apcImageView.leadingAnchor.constraint(
                equalTo: containerAPCView.leadingAnchor, constant: 10),
            apcImageView.widthAnchor.constraint(
                equalToConstant: 50),
            apcImageView.topAnchor.constraint(
                equalTo: containerAPCView.topAnchor),
            apcImageView.heightAnchor.constraint(
                equalToConstant: 50),

            apcTitle.topAnchor.constraint(
                equalTo: containerAPCView.topAnchor, constant: 15),
            apcTitle.leadingAnchor.constraint(
                equalTo: containerAPCView.leadingAnchor, constant: 70),
            apcTitle.trailingAnchor.constraint(
                equalTo: containerAPCView.trailingAnchor, constant: -5),

            containerArtilleryView.leadingAnchor.constraint(
                equalTo: contentView.leadingAnchor, constant: 10),
            containerArtilleryView.trailingAnchor.constraint(
                equalTo: contentView.trailingAnchor, constant: -10),
            containerArtilleryView.topAnchor.constraint(
                equalTo: containerAPCView.bottomAnchor, constant: 10),
            containerArtilleryView.heightAnchor.constraint(
                equalToConstant: 50),

            artilleryImageView.leadingAnchor.constraint(
                equalTo: containerArtilleryView.leadingAnchor, constant: 10),
            artilleryImageView.widthAnchor.constraint(
                equalToConstant: 50),
            artilleryImageView.topAnchor.constraint(
                equalTo: containerArtilleryView.topAnchor),
            artilleryImageView.heightAnchor.constraint(
                equalToConstant: 50),

            artilleryTitle.topAnchor.constraint(
                equalTo: containerArtilleryView.topAnchor, constant: 15),
            artilleryTitle.leadingAnchor.constraint(
                equalTo: containerArtilleryView.leadingAnchor, constant: 70),
            artilleryTitle.trailingAnchor.constraint(
                equalTo: containerArtilleryView.trailingAnchor, constant: -5),

            containerMRLView.leadingAnchor.constraint(
                equalTo: contentView.leadingAnchor, constant: 10),
            containerMRLView.trailingAnchor.constraint(
                equalTo: contentView.trailingAnchor, constant: -10),
            containerMRLView.topAnchor.constraint(
                equalTo: containerArtilleryView.bottomAnchor, constant: 10),
            containerMRLView.heightAnchor.constraint(
                equalToConstant: 50),

            mrlImageView.leadingAnchor.constraint(
                equalTo: containerMRLView.leadingAnchor, constant: 10),
            mrlImageView.widthAnchor.constraint(
                equalToConstant: 50),
            mrlImageView.topAnchor.constraint(
                equalTo: containerMRLView.topAnchor),
            mrlImageView.heightAnchor.constraint(
                equalToConstant: 50),

            mrlTitle.topAnchor.constraint(
                equalTo: containerMRLView.topAnchor, constant: 15),
            mrlTitle.leadingAnchor.constraint(
                equalTo: containerMRLView.leadingAnchor, constant: 70),
            mrlTitle.trailingAnchor.constraint(
                equalTo: containerMRLView.trailingAnchor, constant: -5),


            containerMilitaryAutoView.leadingAnchor.constraint(
                equalTo: contentView.leadingAnchor, constant: 10),
            containerMilitaryAutoView.trailingAnchor.constraint(
                equalTo: contentView.trailingAnchor, constant: -10),
            containerMilitaryAutoView.topAnchor.constraint(
                equalTo: containerMRLView.bottomAnchor, constant: 10),
            containerMilitaryAutoView.heightAnchor.constraint(
                equalToConstant: 50),

            militaryAutoImageView.leadingAnchor.constraint(
                equalTo: containerMilitaryAutoView.leadingAnchor, constant: 10),
            militaryAutoImageView.widthAnchor.constraint(
                equalToConstant: 50),
            militaryAutoImageView.topAnchor.constraint(
                equalTo: containerMilitaryAutoView.topAnchor),
            militaryAutoImageView.heightAnchor.constraint(
                equalToConstant: 50),

            militaryTitle.topAnchor.constraint(
                equalTo: containerMilitaryAutoView.topAnchor, constant: 15),
            militaryTitle.leadingAnchor.constraint(
                equalTo: containerMilitaryAutoView.leadingAnchor, constant: 70),
            militaryTitle.trailingAnchor.constraint(
                equalTo: containerMilitaryAutoView.trailingAnchor, constant: -5),

            containerFuelTankView.leadingAnchor.constraint(
                equalTo: contentView.leadingAnchor, constant: 10),
            containerFuelTankView.trailingAnchor.constraint(
                equalTo: contentView.trailingAnchor, constant: -10),
            containerFuelTankView.topAnchor.constraint(
                equalTo: containerMilitaryAutoView.bottomAnchor, constant: 10),
            containerFuelTankView.heightAnchor.constraint(
                equalToConstant: 50),

            fuelTankImageView.leadingAnchor.constraint(
                equalTo: containerFuelTankView.leadingAnchor, constant: 10),
            fuelTankImageView.widthAnchor.constraint(
                equalToConstant: 50),
            fuelTankImageView.topAnchor.constraint(
                equalTo: containerFuelTankView.topAnchor),
            fuelTankImageView.heightAnchor.constraint(
                equalToConstant: 50),

            fuelTankTitle.topAnchor.constraint(
                equalTo: containerFuelTankView.topAnchor, constant: 15),
            fuelTankTitle.leadingAnchor.constraint(
                equalTo: containerFuelTankView.leadingAnchor, constant: 70),
            fuelTankTitle.trailingAnchor.constraint(
                equalTo: containerFuelTankView.trailingAnchor, constant: -5),

            containerDroneView.leadingAnchor.constraint(
                equalTo: contentView.leadingAnchor, constant: 10),
            containerDroneView.trailingAnchor.constraint(
                equalTo: contentView.trailingAnchor, constant: -10),
            containerDroneView.topAnchor.constraint(
                equalTo: containerFuelTankView.bottomAnchor, constant: 10),
            containerDroneView.heightAnchor.constraint(
                equalToConstant: 50),

            droneImageView.leadingAnchor.constraint(
                equalTo: containerDroneView.leadingAnchor, constant: 10),
            droneImageView.widthAnchor.constraint(
                equalToConstant: 50),
            droneImageView.topAnchor.constraint(
                equalTo: containerDroneView.topAnchor),
            droneImageView.heightAnchor.constraint(
                equalToConstant: 50),

            droneTitle.topAnchor.constraint(
                equalTo: containerDroneView.topAnchor, constant: 15),
            droneTitle.leadingAnchor.constraint(
                equalTo: containerDroneView.leadingAnchor, constant: 70),
            droneTitle.trailingAnchor.constraint(
                equalTo: containerDroneView.trailingAnchor, constant: -5),

            containerNavalShipView.leadingAnchor.constraint(
                equalTo: contentView.leadingAnchor, constant: 10),
            containerNavalShipView.trailingAnchor.constraint(
                equalTo: contentView.trailingAnchor, constant: -10),
            containerNavalShipView.topAnchor.constraint(
                equalTo: containerDroneView.bottomAnchor, constant: 10),
            containerNavalShipView.heightAnchor.constraint(
                equalToConstant: 50),

            navalShipImageView.leadingAnchor.constraint(
                equalTo: containerNavalShipView.leadingAnchor, constant: 10),
            navalShipImageView.widthAnchor.constraint(
                equalToConstant: 50),
            navalShipImageView.topAnchor.constraint(
                equalTo: containerNavalShipView.topAnchor, constant: 5),
            navalShipImageView.heightAnchor.constraint(
                equalToConstant: 50),

            navalShipTitle.topAnchor.constraint(
                equalTo: containerNavalShipView.topAnchor, constant: 15),
            navalShipTitle.leadingAnchor.constraint(
                equalTo: containerNavalShipView.leadingAnchor, constant: 70),
            navalShipTitle.trailingAnchor.constraint(
                equalTo: containerNavalShipView.trailingAnchor, constant: -5),

            containerAntiAircraft.leadingAnchor.constraint(
                equalTo: contentView.leadingAnchor, constant: 10),
            containerAntiAircraft.trailingAnchor.constraint(
                equalTo: contentView.trailingAnchor, constant: -10),
            containerAntiAircraft.topAnchor.constraint(
                equalTo: containerNavalShipView.bottomAnchor, constant: 10),
            containerAntiAircraft.heightAnchor.constraint(
                equalToConstant: 50),

            antiAircraftImageView.leadingAnchor.constraint(
                equalTo: containerAntiAircraft.leadingAnchor, constant: 10),
            antiAircraftImageView.widthAnchor.constraint(
                equalToConstant: 50),
            antiAircraftImageView.topAnchor.constraint(
                equalTo: containerAntiAircraft.topAnchor),
            antiAircraftImageView.heightAnchor.constraint(
                equalToConstant: 50),

            antiAircraftTitle.topAnchor.constraint(
                equalTo: containerAntiAircraft.topAnchor, constant: 15),
            antiAircraftTitle.leadingAnchor.constraint(
                equalTo: containerAntiAircraft.leadingAnchor, constant: 70),
            antiAircraftTitle.trailingAnchor.constraint(
                equalTo: containerAntiAircraft.trailingAnchor, constant: -5),

            containerSpecialEquip.leadingAnchor.constraint(
                equalTo: contentView.leadingAnchor, constant: 10),
            containerSpecialEquip.trailingAnchor.constraint(
                equalTo: contentView.trailingAnchor, constant: -10),
            containerSpecialEquip.topAnchor.constraint(
                equalTo: containerAntiAircraft.bottomAnchor, constant: 10),
            containerSpecialEquip.heightAnchor.constraint(
                equalToConstant: 50),

            specialEquipImageView.leadingAnchor.constraint(
                equalTo: containerSpecialEquip.leadingAnchor, constant: 10),
            specialEquipImageView.widthAnchor.constraint(
                equalToConstant: 50),
            specialEquipImageView.topAnchor.constraint(
                equalTo: containerSpecialEquip.topAnchor),
            specialEquipImageView.heightAnchor.constraint(
                equalToConstant: 50),

            specialEquipTitle.topAnchor.constraint(
                equalTo: containerSpecialEquip.topAnchor, constant: 15),
            specialEquipTitle.leadingAnchor.constraint(
                equalTo: containerSpecialEquip.leadingAnchor, constant: 70),
            specialEquipTitle.trailingAnchor.constraint(
                equalTo: containerSpecialEquip.trailingAnchor, constant: -5),

            containerMobileSRBM.leadingAnchor.constraint(
                equalTo: contentView.leadingAnchor, constant: 10),
            containerMobileSRBM.trailingAnchor.constraint(
                equalTo: contentView.trailingAnchor, constant: -10),
            containerMobileSRBM.topAnchor.constraint(
                equalTo: containerSpecialEquip.bottomAnchor, constant: 10),
            containerMobileSRBM.heightAnchor.constraint(
                equalToConstant: 50),

            mobileSRBMImageView.leadingAnchor.constraint(
                equalTo: containerMobileSRBM.leadingAnchor, constant: 10),
            mobileSRBMImageView.widthAnchor.constraint(
                equalToConstant: 50),
            mobileSRBMImageView.topAnchor.constraint(
                equalTo: containerMobileSRBM.topAnchor),
            mobileSRBMImageView.heightAnchor.constraint(
                equalToConstant: 50),

            mobileSRBMTitle.topAnchor.constraint(
                equalTo: containerMobileSRBM.topAnchor, constant: 15),
            mobileSRBMTitle.leadingAnchor.constraint(
                equalTo: containerMobileSRBM.leadingAnchor, constant: 70),
            mobileSRBMTitle.trailingAnchor.constraint(
                equalTo: containerMobileSRBM.trailingAnchor, constant: -5),

            containerCruiseMissiles.leadingAnchor.constraint(
                equalTo: contentView.leadingAnchor, constant: 10),
            containerCruiseMissiles.trailingAnchor.constraint(
                equalTo: contentView.trailingAnchor, constant: -10),
            containerCruiseMissiles.topAnchor.constraint(
                equalTo: containerMobileSRBM.bottomAnchor, constant: 10),
            containerCruiseMissiles.heightAnchor.constraint(
                equalToConstant: 50),

            cruiseMissilesImageView.leadingAnchor.constraint(
                equalTo: containerCruiseMissiles.leadingAnchor, constant: 10),
            cruiseMissilesImageView.widthAnchor.constraint(
                equalToConstant: 50),
            cruiseMissilesImageView.topAnchor.constraint(
                equalTo: containerCruiseMissiles.topAnchor),
            cruiseMissilesImageView.heightAnchor.constraint(
                equalToConstant: 50),

            cruiseMissilesTitle.topAnchor.constraint(
                equalTo: containerCruiseMissiles.topAnchor, constant: 15),
            cruiseMissilesTitle.leadingAnchor.constraint(
                equalTo: containerCruiseMissiles.leadingAnchor, constant: 70),
            cruiseMissilesTitle.trailingAnchor.constraint(
                equalTo: containerCruiseMissiles.trailingAnchor, constant: -5)

        ])
    }
}
