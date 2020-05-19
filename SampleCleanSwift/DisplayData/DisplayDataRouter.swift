//
//  DisplayDataRouter.swift
//  SampleCleanSwift
//
//  Created by SITICHAI CHUMJAI on 19/5/2563 BE.
//  Copyright (c) 2563 SITICHAI CHUMJAI. All rights reserved.
//

import UIKit

class DisplayDataRouter: DisplayDataDataPassing {
    private weak var viewController: DisplayDataViewController?
    var dataStore: DisplayDataDataStore?
    
    init(viewController: DisplayDataViewController) {
        self.viewController = viewController
    }
}

//MARK: Setup
extension DisplayDataRouter {
    func initialize() {
        
    }
}

//MARK: Routable
extension DisplayDataRouter: DisplayDataRoutable {
    func disPlayEmployeeData(_ viewModel: DisplayData.UseCase.ViewModel) {
        
    }
    
    
}
