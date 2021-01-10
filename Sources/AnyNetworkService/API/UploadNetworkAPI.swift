//
//  UploadNetworkAPI.swift
//  AnyNetworkService
//
//  Created by 刘栋 on 2020/1/4.
//  Copyright © 2020-2021 anotheren.com. All rights reserved.
//

import Foundation
import Alamofire

public protocol UploadNetworkAPI: NetworkAPI {
    
    associatedtype ResultType
    
    func handle(formData: Alamofire.MultipartFormData)
    func handle(response data: Data) -> Result<ResultType, Error>
}
