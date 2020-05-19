//
//  DisplayDataConfiguration.swift
//  SampleCleanSwift
//
//  Created by SITICHAI CHUMJAI on 19/5/2563 BE.
//  Copyright (c) 2563 SITICHAI CHUMJAI. All rights reserved.
//

import Foundation

class DisplayDataConfiguration {
    static let shared: DisplayDataConfiguration = DisplayDataConfiguration()
    
    func configure(_ viewController: DisplayDataViewController) {
        let router = DisplayDataRouter(viewController: viewController)
        let presenter = DisplayDataPresenter(displayable: viewController)
        let interactor = DisplayDataInteractor(presenter: presenter)
        
        viewController.interactor = interactor
        viewController.router = router
        viewController.router.dataStore = interactor
        viewController.router.initialize()
    }
}
