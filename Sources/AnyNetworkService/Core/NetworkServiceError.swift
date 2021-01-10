//
//  NetworkServiceError.swift
//  AnyNetworkService
//
//  Created by 刘栋 on 2021/1/6.
//  Copyright © 2021 anotheren.com. All rights reserved.
//

import Foundation
import Alamofire

public enum NetworkServiceError: Error {
    
    case system(AFError)
    case service(Error)
}
