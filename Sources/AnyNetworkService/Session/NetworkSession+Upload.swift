//
//  NetworkSession+Upload.swift
//  AnyNetworkService
//
//  Created by 刘栋 on 2021/1/6.
//  Copyright © 2021 anotheren.com. All rights reserved.
//

import Foundation
import Alamofire

extension NetworkSession {
    
    public func upload<API: UploadNetworkAPI>(api: API, completion: @escaping (Result<API.ResultType, NetworkServiceError>) -> Void) -> UploadRequest {
        
        return session.upload(multipartFormData: { api.handle(formData: $0) },
                              to: api.url,
                              method: api.method,
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
public func upload<API: UploadNetworkAPI>(api: API, network: NetworkSession, completion: @escaping (Result<API.ResultType, NetworkServiceError>) -> Void) -> Alamofire.UploadRequest {
    return network.upload(api: api, completion: completion)
}
