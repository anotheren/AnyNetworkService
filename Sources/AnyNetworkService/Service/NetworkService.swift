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
}
