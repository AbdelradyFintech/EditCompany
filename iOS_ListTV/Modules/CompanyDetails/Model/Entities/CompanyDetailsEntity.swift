//
//  CompanyDetailsEntity.swift
//  iOS_ListTV
//
//  Created by Fintech on 06/12/2022.
//

import Foundation

struct CompanyDetailsEntity: Codable {
    let id: Int
    let name: String?
    let profitRate, discountRate: Int?
    let transferFinancial: String?
    let recordNumber, taxNumber, iban: String?
    let bank: Bank?
    let businessType: Business?
    let vendor: Vendor?

    enum CodingKeys: String, CodingKey {
        case id, name
        case profitRate = "profit_rate"
        case discountRate = "discount_rate"
        case transferFinancial = "transfer_financial"
        case recordNumber = "record_number"
        case taxNumber = "tax_number"
        case iban, bank
        case businessType = "business_type"
        case vendor
    }
}

struct Business: Codable {
    let id: Int
    let name: String
}

struct Bank: Codable {
    let id: Int
    let name: String
}

struct Vendor: Codable {
    let idNumber: String?
    let name: String?
    let phone: String?
    let email: String?
    
    enum CodingKeys: String, CodingKey {
        case idNumber = "identity_number"
        case phone, email, name
    }

}


