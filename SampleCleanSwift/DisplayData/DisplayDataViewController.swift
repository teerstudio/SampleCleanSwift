//
//  DisplayDataViewController.swift
//  SampleCleanSwift
//
//  Created by SITICHAI CHUMJAI on 19/5/2563 BE.
//  Copyright (c) 2563 SITICHAI CHUMJAI. All rights reserved.
//

import UIKit

class DisplayDataViewController: UIViewController {
    //MARK: @IBOutlet
    
    //MARK: VIP Cycle
    var interactor: DisplayDataBusinessLogic!
    var router: (DisplayDataRoutable & DisplayDataDataPassing)!
    
    public required init?(coder: NSCoder) {
        super.init(coder: coder)
        configure()
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
}

//MARK: Setup & Configuration
extension DisplayDataViewController {
    private func setup() {
        
    }
    
    private func configure() {
        DisplayDataConfiguration.shared.configure(self)
    }
    
    
}


//MARK: Displayable
extension DisplayDataViewController: DisplayDataDisplayable {
    func disPlayEmployeeData(_ viewModel: DisplayData.UseCase.ViewModel) {
        
    }
    
  
    
    
}

