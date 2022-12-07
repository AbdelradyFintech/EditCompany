//
//  EditCompanyDetailsModel.swift
//  iOS_ListTV
//
//  Created by Fintech on 07/12/2022.
//

import Foundation

enum EditCompanyDetailsModel {
    
    struct ViewModel {
        let name: String
        let inChargePerson: String
        let idNumber: String
        let phoneNumber: String
        let email: String
        
        init(model: CompanyDetailsEntity) {
            name = model.name ?? "غير متاح"
            inChargePerson = model.vendor?.name ?? "غير متاح"
            idNumber = "\(model.vendor?.idNumber ?? "")"
            phoneNumber = model.vendor?.phone ?? "غير متاح"
            email = model.vendor?.email ?? "غير متاح"
        }
    }
}
