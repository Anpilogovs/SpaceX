
import Foundation

final class RocketViewModel {
    
    var rockets : [Rocket] = []
    
    var eventHangler: ((_ event: Event) -> Void)? //Data Binding Closure
    
    func fetchRockets() {
        self.eventHangler?(.loading)
        APIManager.shared.request(modelType: [Rocket].self,
                                  type: EndPointItems.rockets) { response in
            self.eventHangler?(.stopLoading)
            switch response {
            case .success(let data):
                self.rockets = data
                self.eventHangler?(.dataLoaded)
            case .failure(let error):
                self.eventHangler?(.error(error))
            }
        }
    }
    
    func isIndexValid(_ index: Int) -> Bool {
        return index >= 0 && index < self.rockets.count
    }
}

extension RocketViewModel {
    
    enum Event {
        case loading
        case stopLoading
        case dataLoaded
        case error(Error?)
    }
}
