//
//  EditCompanyDetailsInteractor.swift
//  iOS_ListTV
//
//  Created by Fintech on 07/12/2022.
//

import Foundation

protocol EditCompanyDetailsInteractorProtocol {
    
}

class EditCompanyDetailsInteractor {
    let presenter: EditCompanyDetailsPresenterProtocol
    let repo: CompanyDetailsGateway
    
    init(presenter: EditCompanyDetailsPresenterProtocol,
         repo: CompanyDetailsGateway) {
        self.presenter = presenter
        self.repo = repo
    }
    
}

extension EditCompanyDetailsInteractor: EditCompanyDetailsInteractorProtocol {
    
}
