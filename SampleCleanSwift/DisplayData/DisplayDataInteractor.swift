//
//  DisplayDataInteractor.swift
//  SampleCleanSwift
//
//  Created by SITICHAI CHUMJAI on 19/5/2563 BE.
//  Copyright (c) 2563 SITICHAI CHUMJAI. All rights reserved.
//

import Foundation

class DisplayDataInteractor: DisplayDataDataStore {
    var empolyData: [Employee]?
    var presenter: DisplayDataPresentable
    var worker: DisplayDataWorker
    
    init(presenter: DisplayDataPresentable) {
        self.presenter = presenter
        worker = DisplayDataWorker()
        
    }
}

//MARK: BusinessLogic
extension DisplayDataInteractor: DisplayDataBusinessLogic {
    func didGetEmployeeData() {
        guard let _employeeData = empolyData else {return}
        let respone = DisplayData.UseCase.Response(data: _employeeData)
        presenter.didReciveEmployeeData(respone)
  
    }
    
    
}
