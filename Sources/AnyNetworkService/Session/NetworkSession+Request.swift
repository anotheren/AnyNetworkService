//
//  NetworkSession+Request.swift
//  AnyNetworkService
//
//  Created by 刘栋 on 2021/1/6.
//  Copyright © 2021 anotheren.com. All rights reserved.
//

import Foundation
import Alamofire

extension NetworkSession {
    
    public func request<API: RequestNetworkAPI>(api: API, completion: @escaping (Result<API.ResultType, NetworkServiceError>) -> Void) -> DataRequest {
        
        return session.request(api.url,
                               method: api.method,
                               parameters: api.parameters,
                               encoding: api.encoding,
                               headers: api.headers,
                               interceptor: api.service.interceptor)
            .validate()
            .responseData { response in
                switch response.result {
                case let .failure(error):
                    completion(.failure(.system(error)))
                case let .success(data):
                    completion(api.handle(response: data).flatMapError { .failure(.service($0)) })
                }
            }
    }
}

@discardableResult
public func requestData<API: RequestNetworkAPI>(api: API, session: NetworkSession = .default, completion: @escaping (Result<API.ResultType, NetworkServiceError>) -> Void) -> Alamofire.DataRequest {
    return session.request(api: api, completion: completion)
}
