//
//  EditCompanyDetailsConfigurator.swift
//  iOS_ListTV
//
//  Created by Fintech on 07/12/2022.
//

import UIKit

class EditCompanyDetailsConfigurator {
    
    static func configure(viewModel: EditCompanyDetailsModel.ViewModel) -> UIViewController {
        
        let view = EditCompanyDetailsViewController(viewModel: viewModel)
        let presenter = EditCompanyDetailsPresenter(view: view)
        let repo = RemoteCompanyDetailsRepo()
        let interactor = EditCompanyDetailsInteractor(presenter: presenter, repo: repo)
        let router = EditCompanyDetailsRouter(view: view)
        
        view.router = router
        view.interactor = interactor
//        view.viewModel = viewModel

        return view
    }
    
}
