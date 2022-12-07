//
//  RemoteCompanyDetailsRepo.swift
//  iOS_ListTV
//
//  Created by Fintech on 06/12/2022.
//

import Foundation

class RemoteCompanyDetailsRepo {
    let client: APIClient
    
    init(client: APIClient = APIClient.shared) {
        self.client = client
    }
}

extension RemoteCompanyDetailsRepo: CompanyDetailsGateway {
    
    func getCompanyDetails(for id: Int,
                           completionHandler: @escaping (Result<ServerResponse<CompanyDetailsEntity>, Error>) -> Void) {
        client.request(for: CompanyDetailsAPIRouter.getCompanyDetails(id: id),
                       responseType: ServerResponse<CompanyDetailsEntity>.self,
                       completionHandler: completionHandler)
    }
}


