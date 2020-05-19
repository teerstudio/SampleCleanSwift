//
//  SampleRequestWorker.swift
//  SampleCleanSwift
//
//  Created by SITICHAI CHUMJAI on 19/5/2563 BE.
//  Copyright (c) 2563 SITICHAI CHUMJAI. All rights reserved.
//

import Foundation
import Alamofire

class SampleRequestWorker {
    
    func requestService(requset: SampleRequest.UseCase.Request ,completion: @escaping(SampleRequest.UseCase.Response) -> Void, failure: @escaping(Error) -> Void)   {
        AF.request(requset.url)
            .validate()
            .responseDecodable(of: EmployeeModel.self) { (response) in
                switch response.result {
                case .success:
                    guard let employee = response.value else { return }
                    let respone = SampleRequest.UseCase.Response(status: true, respone: employee)
                    completion(respone)
                case .failure(let error):
                    failure(error)
                }
            }
    }
    
    func getdatafomrbabaa() -> String {
        return "ddsdsdsdssdsd"
    }
    
    
    
}


