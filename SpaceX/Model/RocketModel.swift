
import Foundation

struct Rocket: Decodable {
    let name: String
    let flickrImages: [String]
    let costPerLaunch: Int
    let firstFlight: String
    let country: String
    let diameter: Diameter
    let mass: Mass
    let firstStage: FirstStage
    let secondStage: SecondStage
    let payloadWeights: [PayloadWeight]
}

extension Rocket {
    struct Diameter: Decodable {
        let meters: Double
        let feet: Double
    }
}

extension Rocket {
    struct Mass: Decodable {
        let kg: Int
        let lb: Int
    }
}

extension Rocket {
    struct FirstStage: Decodable {
        let engines: Int
        let fuelAmountTons: Double?
        let burnTimeSec: Int
    }
}

extension Rocket {
    struct PayloadWeight: Decodable {
        let id: String
        let name: String
        let kg: Int
        let lb: Int
    }
}

extension Rocket {
    struct SecondStage: Decodable {
        let engines: Int
        let fuelAmountTons: Double
        let burnTimeSec: Int
    }
}
