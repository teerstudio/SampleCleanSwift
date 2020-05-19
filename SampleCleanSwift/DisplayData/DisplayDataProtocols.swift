//
//  DisplayDataProtocols.swift
//  SampleCleanSwift
//
//  Created by SITICHAI CHUMJAI on 19/5/2563 BE.
//  Copyright (c) 2563 SITICHAI CHUMJAI. All rights reserved.
//

import Foundation

//MARK: ViewController
protocol DisplayDataDisplayable: class {
    func disPlayEmployeeData(_ viewModel: DisplayData.UseCase.ViewModel)
}

//MARK: Interactor
protocol DisplayDataBusinessLogic {
   func didGetEmployeeData()
}

//MARK: Presenter
protocol DisplayDataPresentable {
    func didReciveEmployeeData(_ respone: DisplayData.UseCase.Response)
    
}

//MARK: Routable
protocol DisplayDataRoutable {
  
    
}

//MARK: DataStore
protocol DisplayDataDataStore {
    var empolyData: [Employee]? { get set }
    
}

//MARK: DataPassing
protocol DisplayDataDataPassing {
    var dataStore: DisplayDataDataStore? { get set }
    
    func initialize()
}
