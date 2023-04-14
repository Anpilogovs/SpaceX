
import Foundation

class NetworkConstants {
    
    public static var shared: NetworkConstants = NetworkConstants()
    
    private init() {}
    
    public var serverAdressLaunch: String {
        get {
            return "https://api.spacexdata.com/v4/launches"
        }
    }
    
    public var serverAdressRockets: String {
        get {
            return "https://api.spacexdata.com/v4/rockets"
        }
    }
    
    public var imageServerAdress: String {
        get {
            return "https://image.tmdb.org/t/p/w500/"
        }
    }
}
