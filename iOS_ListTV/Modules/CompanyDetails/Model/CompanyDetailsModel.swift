//
//  CompanyDetailsModel.swift
//  iOS_ListTV
//
//  Created by Fintech on 06/12/2022.
//

import Foundation

enum CompanyDetailsModel {
    enum Request {
        case getDetails
    }
    
    struct Response {
        let details: CompanyDetailsEntity
    }
    
    struct ViewModel {
        let name: String
        let commertialRecord: String
        let taxNumber: String
        let activity: String
        let inChargePerson: String
        let idNumber: String
        let phoneNumber: String
        let email: String
        let iban: String
        let bankName: String
        let profitShare: String
        let discountPrecent: String
        let conversionType: String
        
        init(model: CompanyDetailsEntity) {
            name = model.name ?? "غير متاح"
            commertialRecord = model.recordNumber ?? "غير متاح"
            taxNumber = model.taxNumber ?? "غير متاح"
            activity = model.businessType?.name ?? "غير متاح"
            inChargePerson = model.vendor?.name ?? "غير متاح"
            idNumber = "\(model.vendor?.idNumber ?? "")"
            phoneNumber = model.vendor?.phone ?? "غير متاح"
            email = model.vendor?.email ?? "غير متاح"
            iban = model.iban ?? "غير متاح"
            bankName = model.bank?.name ?? "غير متاح"
            profitShare = "\(model.profitRate ?? 0)"
            discountPrecent = "\(model.discountRate ?? 0)"
            conversionType = model.transferFinancial ?? "غير متاح"
        }
    }
}
