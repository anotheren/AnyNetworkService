//
//  NetworkService.swift
//  AnyNetworkService
//
//  Created by 刘栋 on 2021/1/6.
//  Copyright © 2021 anotheren.com. All rights reserved.
//

import Foundation
import Alamofire

public protocol NetworkService {
    
    var environment: NetworkEnvironment { get }
    var baseURL: String { get }
    var adapters: [Alamofire.Adapter] { get }
    var retriers: [Alamofire.Retrier] { get }
    
    init(environment: NetworkEnvironment)
}
 
extension NetworkService {
    
    var interceptor: Alamofire.RequestInterceptor {
        return Interceptor(adapters: adapters, retriers: retriers, interceptors: [])
    }
}
