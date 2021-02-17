//
//  NetworkAPI.swift
//  AnyNetworkService
//
//  Created by 刘栋 on 2020/1/4.
//  Copyright © 2020-2021 anotheren.com. All rights reserved.
//

import Foundation
import Alamofire

public protocol NetworkAPI {
    
    var url: String { get }
    var method: Alamofire.HTTPMethod { get }
    var headers: Alamofire.HTTPHeaders { get }
    var parameters: Alamofire.Parameters { get }
    var encoding: Alamofire.ParameterEncoding { get }
}

extension NetworkAPI {
    
    public var headers: Alamofire.HTTPHeaders {
        return HTTPHeaders()
    }
    
    public var parameters: Alamofire.Parameters {
        return Parameters()
    }
    
    public var encoding: Alamofire.ParameterEncoding {
        return URLEncoding()
    }
}

public protocol ServicedNetworkAPI: NetworkAPI {
    
    var service: NetworkService { get }
    var path: String { get }
}

extension ServicedNetworkAPI {
    
    public var url: String {
        return service.baseURL + path
    }
}
