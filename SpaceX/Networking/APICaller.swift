
import Foundation

enum NetworkError: Error {
    case urlError
    case canNotParseData
}

class APICaller {
    
    static func getRocketInfo(
        completionHandler: @escaping (_ result: Result<RocketModel,NetworkError>) -> Void) {
        
            let urlString = NetworkConstants.shared.serverAdressRockets
            
            guard let url = URL(string: urlString) else {
                completionHandler(.failure(.urlError))
                return
            }
            
            URLSession.shared.dataTask(with: url) { dataResponse, urlResponse, error in
                if error == nil,
                   let data = dataResponse,
                   let resultData = try? JSONDecoder().decode(RocketModel.self,
                    from: data) {
                    completionHandler(.success(resultData))
                }  else {
                    completionHandler(.failure(.canNotParseData))
                }
            }.resume()
        }
}
