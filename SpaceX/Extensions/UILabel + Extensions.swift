//
//  RocketViewModel.swift
//  SpaceX
//
//  Created by Сергей Анпилогов on 02.05.2023.
//

import UIKit

enum LabelText: String {
    
    case firstLaunch = "First Launch"
    case country = "Country"
    case costOfLaunch = "The cost of launch"
    case firstStage = "First Stage"
    case engines = "Engines"
    case fuelAmountTonsFirst =  "Fuel Amount Tons"
    case burnTimeFirst = "Burn Time Sec"
    case secondStage =  "Second Stage"
    case diameter,weight,hight,payload
}


// MARK: - Sec Ton
enum UnitType: String {
    case m
    case ft
    case kg
    case lb
    case ton
    case sec
}

// MARK: - Unit Types for segmented control
enum UnitTypes: String, CaseIterable {
    case height, diameter, weight, payload
    var description: [String] {
        switch self {
        case .height:   return [UnitType.m.rawValue, UnitType.ft.rawValue]
        case .diameter: return [UnitType.m.rawValue, UnitType.ft.rawValue]
        case .weight:   return [UnitType.kg.rawValue, UnitType.lb.rawValue]
        case .payload:  return [UnitType.kg.rawValue, UnitType.lb.rawValue]
        }
    }
}

extension UILabel {
    
    convenience init(text: LabelText, size: CGFloat){
        self.init(frame: .zero)
        self.text = text.rawValue
        self.font = UIFont.boldSystemFont(ofSize: size)
        self.textColor = .white
    }
}
