//
//  RequestNetworkAPI.swift
//  AnyNetworkService
//
//  Created by 刘栋 on 2020/1/4.
//  Copyright © 2020-2021 anotheren.com. All rights reserved.
//

import Foundation
import Alamofire

public protocol RequestNetworkAPI: NetworkAPI {
    
    associatedtype ResultType
    
    func handle(response data: Data) throws -> ResultType
}
