//
//  NetworkSession.swift
//  AnyNetworkService
//
//  Created by 刘栋 on 2020/1/4.
//  Copyright © 2020-2021 anotheren.com. All rights reserved.
//

import Foundation
import Alamofire

public class NetworkSession {
    
    public static let `default`: NetworkSession = .init(configuration: URLSessionConfiguration.af.default)
    
    public let session: Session
    
    public init(configuration: URLSessionConfiguration) {
        self.session = Session(configuration: configuration)
    }
    
    public init(session: Session) {
        self.session = session
    }
}
