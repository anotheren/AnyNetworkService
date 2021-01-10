//
//  NetworkEnvironment.swift
//  AnyNetworkService
//
//  Created by 刘栋 on 2021/1/6.
//  Copyright © 2021 anotheren.com. All rights reserved.
//

import Foundation

public struct NetworkEnvironment: RawRepresentable, Equatable, Codable {
    
    public let rawValue: Int
    
    public init(rawValue: Int) {
        self.rawValue = rawValue
    }
}

extension NetworkEnvironment {
    
    public static let production = NetworkEnvironment(rawValue: 1)
    
    public static let acceptance = NetworkEnvironment(rawValue: 2)
    
    public static let testing = NetworkEnvironment(rawValue: 3)
    
    public static let development = NetworkEnvironment(rawValue: 4)
}
