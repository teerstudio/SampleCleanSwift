//
//  DisplayDataPresenter.swift
//  SampleCleanSwift
//
//  Created by SITICHAI CHUMJAI on 19/5/2563 BE.
//  Copyright (c) 2563 SITICHAI CHUMJAI. All rights reserved.
//

import UIKit

class DisplayDataPresenter {
    private weak var displayable: DisplayDataDisplayable?
    
    init(displayable: DisplayDataDisplayable) {
        self.displayable = displayable
    }
}

//MARK: Presentable
extension DisplayDataPresenter: DisplayDataPresentable {
    func didReciveEmployeeData(_ respone: DisplayData.UseCase.Response) {
        let viewModel = DisplayData.UseCase.ViewModel(data: respone.data)
        displayable?.disPlayEmployeeData(viewModel)
    }
    
    
 
    
    
}
