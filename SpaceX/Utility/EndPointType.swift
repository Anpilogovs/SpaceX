//
//  EndPointType.swift
//  SpaceX
//
//  Created by Сергей Анпилогов on 17.04.2023.
//

import Foundation


enum HTTPMethods: String {
    case get = "GET"
}

protocol EndPointType {
    var path: String { get }
    var baseURL : String { get }
    var url: URL? { get }
    var method: HTTPMethods { get }
 }

enum EndPointItems {
    case rockets // Module
    case launch
}

extension EndPointItems: EndPointType {

    var path: String {
        switch self {
        case .rockets:
            return "rockets"
        case .launch:
            return "launch"
        }
    }
    
    var baseURL: String {
        return "https://api.spacexdata.com/v4/"
    }
    
    var url: URL? {
        return URL(string: "\(baseURL)\(path)")
    }

    var method: HTTPMethods {
        switch self {
        case .rockets:
            return .get
        case .launch:
            return .get
        }
    }
}
