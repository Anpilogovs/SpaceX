
import Foundation

enum NetworkError: Error {
    case urlError
    case invalidResponse
    case invalidData
    case decodingError(Error)
}

class APICaller {
    static func fetchRockets(completionHandler: @escaping (Result<[Rocket], NetworkError>) -> Void) {
        let urlString = NetworkConstants.shared.serverAdressRockets
        
        guard let url = URL(string: urlString) else {
            completionHandler(.failure(.urlError))
            return
        }
        
        let urlSession = URLSession(configuration: .default)
        
        urlSession.dataTask(with: url) { data, response, error in
            if error != nil {
                completionHandler(.failure(.invalidResponse))
                return
            }
            
            guard let httpResponse = response as? HTTPURLResponse,
                  httpResponse.statusCode == 200,
                  let data = data else {
                completionHandler(.failure(.invalidResponse))
                return
            }
            
            do {
                let rocketModel = try JSONDecoder().decode([Rocket].self, from: data)
                completionHandler(.success(rocketModel))
            } catch let error {
                completionHandler(.failure(.decodingError(error)))
            }
        }.resume()
      
    }
}
