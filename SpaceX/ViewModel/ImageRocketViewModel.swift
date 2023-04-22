
import Foundation

class ImageRocketViewModel {
    
    let imageUrl: URL?
    
    init(rocket: Rocket) {
        guard let imageUrlString = rocket.flickrImages.first else {
            self.imageUrl = nil
            return
        }
        self.imageUrl = URL(string: imageUrlString)
    }
}
