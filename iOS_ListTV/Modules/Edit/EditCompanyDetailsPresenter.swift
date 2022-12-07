//
//  EditCompanyDetailsPresenter.swift
//  iOS_ListTV
//
//  Created by Fintech on 07/12/2022.
//

import Foundation

protocol EditCompanyDetailsPresenterProtocol {
    
}

class EditCompanyDetailsPresenter {
    weak var view: EditCompanyDetailsViewControllerProtocol?
    
    init(view: EditCompanyDetailsViewControllerProtocol?) {
        self.view = view
    }
}

extension EditCompanyDetailsPresenter: EditCompanyDetailsPresenterProtocol {
    
}
