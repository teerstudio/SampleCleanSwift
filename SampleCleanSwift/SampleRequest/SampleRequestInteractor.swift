//
//  SampleRequestInteractor.swift
//  SampleCleanSwift
//
//  Created by SITICHAI CHUMJAI on 19/5/2563 BE.
//  Copyright (c) 2563 SITICHAI CHUMJAI. All rights reserved.
//

import Foundation

class SampleRequestInteractor: SampleRequestDataStore {
    var employee: [Employee]?
    var presenter: SampleRequestPresentable
    var worker: SampleRequestWorker
    
    init(presenter: SampleRequestPresentable) {
        self.presenter = presenter
        worker = SampleRequestWorker()
    }
}

//MARK: BusinessLogic
extension SampleRequestInteractor: SampleRequestBusinessLogic {
    func getABCD(_ request: SampleRequest2.UseCase.Request) {
        let respone = SampleRequest2.UseCase.Response(result: worker.getdatafomrbabaa())
        presenter.didReciveBC(respone: respone)
        
    }
    
    
    
    
    
    
    func getEmployeeDataWith(request: SampleRequest.UseCase.Request) {
        worker.requestService(requset: request, completion: { [weak self] Respone in
            self?.presenter.didReviceEmployeeWith(respone: Respone)
        }) { (error) in
            print(error.localizedDescription)
        }
    }

}
