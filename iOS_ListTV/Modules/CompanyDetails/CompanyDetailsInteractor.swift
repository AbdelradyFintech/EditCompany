//
//  CompanyDetailsInteractor.swift
//  iOS_ListTV
//
//  Created by Fintech on 06/12/2022.
//

import Foundation

protocol CompanyDetailsInteractorProtocol {
    func getDetails()
}

protocol CompanyDetailsDataStore {
    var details: CompanyDetailsEntity? { get }
}


class CompanyDetailsInteractor: CompanyDetailsDataStore {
    let id: Int
    let repo: CompanyDetailsGateway
    let presenter: CompanyDetailsPresenterProtocol
    
    var details: CompanyDetailsEntity?

    init(id: Int,
         repo: CompanyDetailsGateway,
         presenter: CompanyDetailsPresenterProtocol) {
        self.id = id
        self.repo = repo
        self.presenter = presenter
    }
}

extension CompanyDetailsInteractor: CompanyDetailsInteractorProtocol {
    func getDetails() {
        repo.getCompanyDetails(for: id) { [weak self] result in
            guard let self else { return }
            switch result {
            case .success(let response):
                print(response)
                guard let details = response.data else { return }
                self.details = details
                self.presenter.present(details: CompanyDetailsModel.Response(details: details))
            case .failure(let failure):
                print(failure)
            }
        }
    }
    
    
}

