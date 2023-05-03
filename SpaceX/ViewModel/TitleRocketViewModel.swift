import Foundation

class TitleRocketViewModel {
    
    var rocket: Rocket
    
    init(rocket: Rocket) {
        self.rocket = rocket
    }
    
    var nameRocket: String {
        return rocket.name 
    }
}
