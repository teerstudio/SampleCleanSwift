//
//  SampleRequest.swift
//  SampleCleanSwift
//
//  Created by SITICHAI CHUMJAI on 19/5/2563 BE.
//  Copyright (c) 2563 SITICHAI CHUMJAI. All rights reserved.
//

import UIKit

struct SampleRequest {
    //MARK: Use Cases
    struct UseCase {
        struct Request {
            var url: String
        }
        struct Response {
            var status: Bool
            var respone: EmployeeModel?
        }
        struct ViewModel {
            var data: EmployeeModel
        }
    }
}


struct SampleRequest2 {
    //MARK: Use Cases
    struct UseCase {
        struct Request {
        }
        struct Response {
            var result: String
           
        }
        struct ViewModel {
            var result: String
        }
    }
}










struct EmployeeModel: Decodable {
    var status: String
    var data: [Employee]
    
}
struct Employee: Decodable {
    var employee_name: String
    var employee_salary: String
    var employee_age: String
    var profile_image: String
}
