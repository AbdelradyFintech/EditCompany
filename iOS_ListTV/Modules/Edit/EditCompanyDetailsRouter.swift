//
//  Router.swift
//  iOS_ListTV
//
//  Created by Fintech on 07/12/2022.
//

import Foundation

protocol EditCompanyDetailsRouterProtocol {
    func backButtonTapped()
}

class EditCompanyDetailsRouter {
    weak var view: EditCompanyDetailsViewControllerProtocol?
    
    init(view: EditCompanyDetailsViewControllerProtocol) {
        self.view = view
    }
}

extension EditCompanyDetailsRouter: EditCompanyDetailsRouterProtocol {
    func backButtonTapped() {
        guard let navigator = (view as? EditCompanyDetailsViewController)?.navigationController
        else { return }
        
        navigator.popViewController(animated: true)
    }
    
    
}
