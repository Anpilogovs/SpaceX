
import Foundation


protocol RocketInfoCellViewModelProtocol {
    func formattedHeight() -> String
    func formattedDiameter() -> String
    func formattedMass() -> String
    func formattedPayload() -> String
}

class InfoRocketViewModel: RocketInfoCellViewModelProtocol {
    
    var rocket: Rocket

    init(rocket: Rocket) {
        self.rocket = rocket
    }
    
    func formattedHeight() -> String {
        if let height = rocket.height.feet {
            return "\(height) \(UnitType.ft)"
        } else {
            return ""
        }
    }
    
    func formattedDiameter() -> String {
        if let diameter = rocket.diameter.feet {
            return "\(diameter) \(UnitType.ft)"
        } else {
            return ""
        }
    }
    
    func formattedMass() -> String {
        return "\(rocket.mass.lb) \(UnitType.lb)"
    }
    
    func formattedPayload() -> String {
        return "\(rocket.payloadWeights[0].lb) \(UnitType.lb)"
    }
}


