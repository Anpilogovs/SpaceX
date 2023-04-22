
import Foundation


protocol RocketInfoCellViewModelProtocol {
    func formattedHeight() -> String
    func formattedDiameter() -> String
    func formattedMass() -> String
}

class InfoRocketViewModel: RocketInfoCellViewModelProtocol {

    var rocket: Rocket
    
    init(rocket: Rocket) {
        self.rocket = rocket
    }
    
    func formattedHeight() -> String {
        if let rocket = rocket.height.meters {
            return String(rocket)
        } else {
            return ""
        }
    }
    
    func formattedDiameter() -> String {
        let meters = rocket.diameter.meters ?? 0.0
        return "\(meters), \(UnitType.m.rawValue)"
    }
    
    func formattedMass() -> String {
        if let feet = rocket.height.feet {
            return String(feet)
        } else {
            return ""
        }
    }
}


