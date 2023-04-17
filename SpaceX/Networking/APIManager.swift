
import Foundation

enum NetworkError: Error {
    case urlError
    case invalidResponse
    case invalidData
    case decodingError(Error)
}

typealias Hangler<T> = (Result<T, NetworkError>) -> Void

final class APIManager {
        static let shared = APIManager()
        private init() {}
    
    func request<T: Decodable>(modelType: T.Type, type: EndPointType, completion: @escaping Hangler<T>) {
                
        guard let url = type.url else {
            completion(.failure(.urlError))
            return
        }

        let urlSession = URLSession(configuration: .default)

        urlSession.dataTask(with: url) { data, response, error in
            if error != nil {
                completion(.failure(.invalidResponse))
                return
            }
            guard let httpResponse = response as? HTTPURLResponse,
                  httpResponse.statusCode == 200,
                  let data = data else {
                completion(.failure(.invalidResponse))
                return
            }

            do {
                let rocketModel = try JSONDecoder().decode(modelType, from: data)
                completion(.success(rocketModel))
            } catch let error {
                completion(.failure(.decodingError(error)))
            }
        }.resume()
        
    }
}
