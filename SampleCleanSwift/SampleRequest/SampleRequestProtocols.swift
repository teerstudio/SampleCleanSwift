//
//  SampleRequestProtocols.swift
//  SampleCleanSwift
//
//  Created by SITICHAI CHUMJAI on 19/5/2563 BE.
//  Copyright (c) 2563 SITICHAI CHUMJAI. All rights reserved.
//

import Foundation
import UIKit

//MARK: ViewController
protocol SampleRequestDisplayable: class {
    func displayEmployeeData(_ viewModel: SampleRequest.UseCase.ViewModel)
    func displayString(_ viewModel: SampleRequest2.UseCase.ViewModel)
}

//MARK: Interactor
protocol SampleRequestBusinessLogic {
    func getEmployeeDataWith(request: SampleRequest.UseCase.Request)
    func getABCD(_ request: SampleRequest2.UseCase.Request)
    
}


//MARK: Presenter
protocol SampleRequestPresentable {
    func didReviceEmployeeWith(respone: SampleRequest.UseCase.Response)
    func didReciveBC(respone: SampleRequest2.UseCase.Response)
}


//MARK: Routable
protocol SampleRequestRoutable {
     func passDataToNextScene(segue: UIStoryboardSegue)
     func gotoNextPage()
     
}

//MARK: DataStore
protocol SampleRequestDataStore {
    var employee: [Employee]?  { get set }
    
}

//MARK: DataPassing
protocol SampleRequestDataPassing {
    var dataStore: SampleRequestDataStore? { get set }
    
    func initialize()
}
