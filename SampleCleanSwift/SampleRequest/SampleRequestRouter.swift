//
//  SampleRequestRouter.swift
//  SampleCleanSwift
//
//  Created by SITICHAI CHUMJAI on 19/5/2563 BE.
//  Copyright (c) 2563 SITICHAI CHUMJAI. All rights reserved.
//

import UIKit

class SampleRequestRouter: SampleRequestDataPassing {
    private weak var viewController: SampleRequestViewController?
    var dataStore: SampleRequestDataStore?
    
    init(viewController: SampleRequestViewController) {
        self.viewController = viewController
    }
}

//MARK: Setup
extension SampleRequestRouter {
    func initialize() {
        
    }
}

//MARK: Routable
extension SampleRequestRouter: SampleRequestRoutable {
    func gotoNextPage() {
        
    }
    
   
    func passDataToNextScene(segue: UIStoryboardSegue) {
        let showOrderViewController = segue.destination as! DisplayDataViewController
        showOrderViewController.router.dataStore?.empolyData  = dataStore?.employee
    }
    
   
    
    
   
}
