//
//  SampleRequestConfiguration.swift
//  SampleCleanSwift
//
//  Created by SITICHAI CHUMJAI on 19/5/2563 BE.
//  Copyright (c) 2563 SITICHAI CHUMJAI. All rights reserved.
//

import Foundation

class SampleRequestConfiguration {
    static let shared: SampleRequestConfiguration = SampleRequestConfiguration()
    
    func configure(_ viewController: SampleRequestViewController) {
        let router = SampleRequestRouter(viewController: viewController)
        let presenter = SampleRequestPresenter(displayable: viewController)
        let interactor = SampleRequestInteractor(presenter: presenter)
        
        viewController.interactor = interactor
        viewController.router = router
        viewController.router.dataStore = interactor
        viewController.router.initialize()
    }
}
