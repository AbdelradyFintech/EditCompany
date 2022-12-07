//
//  CompanyDetailsPresenter.swift
//  iOS_ListTV
//
//  Created by Fintech on 06/12/2022.
//

import Foundation

protocol CompanyDetailsPresenterProtocol {
    func present(details: CompanyDetailsModel.Response)
}

class CompanyDetailsPresenter {
    weak var view: CompanyDetailsViewControllerProtocol?
    
    init(view: CompanyDetailsViewControllerProtocol) {
        self.view = view
    }
}

extension CompanyDetailsPresenter: CompanyDetailsPresenterProtocol {
    func present(details: CompanyDetailsModel.Response) {
        let viewModel = CompanyDetailsModel.ViewModel(model: details.details)
        view?.show(details: viewModel)

    }
}
