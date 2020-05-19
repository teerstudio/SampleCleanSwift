//
//  SampleRequestViewController.swift
//  SampleCleanSwift
//
//  Created by SITICHAI CHUMJAI on 19/5/2563 BE.
//  Copyright (c) 2563 SITICHAI CHUMJAI. All rights reserved.
//

import UIKit

class SampleRequestViewController: UIViewController {
    //MARK: @IBOutlet
    
    //MARK: VIP Cycle
    var interactor: SampleRequestBusinessLogic!
    var router: (SampleRequestRoutable & SampleRequestDataPassing)!
    
    public required init?(coder: NSCoder) {
        super.init(coder: coder)
        configure()
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        requestService()
    }
    
    func requestService()  {
        let request = SampleRequest.UseCase.Request(url: "http://dummy.restapiexample.com/api/v1/employees")
        interactor.getEmployeeDataWith(request: request)
    }
    
    func requestABC()  {
        let request = SampleRequest2.UseCase.Request()
        interactor.getABCD(request)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
}

//MARK: Setup & Configuration
extension SampleRequestViewController {
    private func setup() {
        
    }
    
    private func configure() {
        SampleRequestConfiguration.shared.configure(self)
    }
}


//MARK: Displayable
extension SampleRequestViewController: SampleRequestDisplayable {
    func displayString(_ viewModel: SampleRequest2.UseCase.ViewModel) {
        print(viewModel.result)
    }
    
    func displayEmployeeData(_ viewModel: SampleRequest.UseCase.ViewModel) {
        print(viewModel.data)
    }

}

