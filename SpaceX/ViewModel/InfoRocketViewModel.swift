import Foundation

protocol RocketInfoCellViewModelProtocol {
    func formattedHeight() -> String
}

class InfoRocketViewModel: RocketInfoCellViewModelProtocol {

    var rocket: Rocket?

    init(rocket: Rocket) {
        self.rocket = rocket
    }
    
    func formattedHeight() -> String {
        if let height = rocket?.payloadWeights {
            return "\(height) "
        } else {
            return ""
        }
    }
    
//    func formattedDiameter() -> String {
//        if let diameter = rocket?.diameter.feet {
//            return "\(diameter) \(UnitType.ft)"
//        } else {
//            return ""
//        }
//    }
//
//    func formattedMass() -> String {
//        return "\(String(describing: rocket?.mass.lb)) \(UnitType.lb)"
//    }
//
//    func formattedPayload() -> String {
//        return "\(String(describing: rocket?.payloadWeights[0].lb)) \(UnitType.lb)"
//    }
}


