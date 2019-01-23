//
//  OdooClient.swift
//  OdooSwiftApi
//
//  Created by Yasir Ibrahim on 1/23/19.
//

import Foundation
import Alamofire

public class OdooClient {
    
    public init() {}

    public func callController(url: String, params: Array<Any>, callback: @escaping (Any) -> Void ){
        let parameters: Parameters = [
            "jsonrpc": "2.0",
            "method": "call",
            "params": params,
            "id": arc4random_uniform(1000000000)
        ]
        Alamofire.request(url , method: .post, parameters: parameters, encoding: JSONEncoding.default).responseJSON { response in
            if let json = response.result.value {
                callback(json)
            }
        }
    }
}
