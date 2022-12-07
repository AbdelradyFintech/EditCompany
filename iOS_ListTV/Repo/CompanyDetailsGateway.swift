//
//  CompanyDetailsGateway.swift
//  iOS_ListTV
//
//  Created by Fintech on 06/12/2022.
//

import Foundation

protocol CompanyDetailsGateway {
    func getCompanyDetails(for id: Int,
                           completionHandler: @escaping (Result<ServerResponse<CompanyDetailsEntity>, Error>) -> Void)
    
}
