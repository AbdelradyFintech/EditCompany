//
//  CompanyDetailsRouter.swift
//  iOS_ListTV
//
//  Created by Fintech on 06/12/2022.
//

import Foundation

protocol CompanyDetailsRouterProtocol {
    func editButtonTapped()
    func closeButtonTapped()
    
}

protocol CompanyDetailsDataPassing {
    var dataStore: CompanyDetailsDataStore? { get }
}

class CompanyDetailsRouter: CompanyDetailsDataPassing {
    var dataStore: CompanyDetailsDataStore?
    weak var view: CompanyDetailsViewController?
    init(view: CompanyDetailsViewController) {
        self.view = view
    }
}

extension CompanyDetailsRouter: CompanyDetailsRouterProtocol {
    func closeButtonTapped() {
         let destination = CloseCompanyViewController()
        destination.modalPresentationStyle = .overFullScreen

        view?.present(destination, animated: true)
    }
    
    func editButtonTapped() {
        guard let details = dataStore?.details
        else { return }
        let destination = EditCompanyDetailsConfigurator.configure(viewModel: .init(model: details))
                                            
        view?.navigationController?.pushViewController(destination, animated: true)
    }
}
