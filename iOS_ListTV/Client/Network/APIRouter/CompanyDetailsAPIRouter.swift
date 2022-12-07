//
//  ContactUsAPIRouter.swift
//  iOS_loginRasid
//
//  Created by Fintech on 27/11/2022.
//

import Foundation
import Alamofire


enum CompanyDetailsAPIRouter {
    
    case getCompanyDetails(id: Int)
}

extension CompanyDetailsAPIRouter: APIRouterProtocol {
    var path: String {
        switch self {
        case .getCompanyDetails(let id):
            return "/facilities/\(id)"
        }
    }
    
    var method: NetworkRequestMethod {
        .get
    }
    
    var parameters: [String: String] {
        switch self {
        case .getCompanyDetails:
            return [:]
        }
    }
    
    
}
