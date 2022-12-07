//
//  CompanyDetailsConfigurator.swift
//  iOS_ListTV
//
//  Created by Fintech on 06/12/2022.
//

import UIKit

class CompanyDetailsConfigurator {
    
    static func configure() -> UIViewController {
        let view = CompanyDetailsViewController()
        let presenter = CompanyDetailsPresenter(view: view)
        let repo = RemoteCompanyDetailsRepo()
        let interactor = CompanyDetailsInteractor(id: 8,
                                                  repo: repo,
                                                  presenter: presenter)
        view.interactor = interactor
        let router = CompanyDetailsRouter(view: view)
        router.dataStore = interactor
        view.router = router
        return view
    }
}
