//
//  SampleRequestPresenter.swift
//  SampleCleanSwift
//
//  Created by SITICHAI CHUMJAI on 19/5/2563 BE.
//  Copyright (c) 2563 SITICHAI CHUMJAI. All rights reserved.
//

import UIKit

class SampleRequestPresenter {
    private weak var displayable: SampleRequestDisplayable?
    
    init(displayable: SampleRequestDisplayable) {
        self.displayable = displayable
    }
}

//MARK: Presentable
extension SampleRequestPresenter: SampleRequestPresentable {
    func didReciveBC(respone: SampleRequest2.UseCase.Response) {
        let viewModel = SampleRequest2.UseCase.ViewModel(result: respone.result)
        displayable?.displayString(viewModel)
        
    }
    
    func didReviceEmployeeWith(respone: SampleRequest.UseCase.Response) {
        guard  let data = respone.respone else { return }
        let viewModel = SampleRequest.UseCase.ViewModel(data:data)
        displayable?.displayEmployeeData(viewModel)
    }
}
