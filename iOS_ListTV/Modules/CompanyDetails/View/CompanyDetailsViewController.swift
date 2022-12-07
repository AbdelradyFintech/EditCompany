//
//  CompanyDetailsViewController.swift
//  iOS_ListTV
//
//  Created by Fintech on 06/12/2022.
//

import UIKit

protocol CompanyDetailsViewControllerProtocol: AnyObject {
    func show(details: CompanyDetailsModel.ViewModel)
}

class CompanyDetailsViewController: UIViewController {
    @IBOutlet weak var companyNameLabel: UILabel!
    @IBOutlet weak var commercialRecordLabel: UILabel!
    @IBOutlet weak var taxNumberLabel: UILabel!
    @IBOutlet weak var activityLabel: UILabel!
    @IBOutlet weak var inchargeNameLabel: UILabel!
    @IBOutlet weak var idNumberLabel: UILabel!
    @IBOutlet weak var phoneNumberLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var ibanLabel: UILabel!
    @IBOutlet weak var bankNameLabel: UILabel!
    @IBOutlet weak var profitShareLabel: UILabel!
    @IBOutlet weak var discountLabel: UILabel!
    @IBOutlet weak var conversionTypeLabel: UILabel!
    
    var interactor: CompanyDetailsInteractorProtocol?
    var router: CompanyDetailsRouterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        interactor?.getDetails()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let img = UIImage(named: "logo_ic")
        navigationItem.titleView = UIImageView(image: img)
    }
    
    @IBAction func closeButtonAction(_ sender: Any) {
        router?.closeButtonTapped()
    }
    
    @IBAction func editButtonAction(_ sender: Any) {
        router?.editButtonTapped()
    }
    
}

extension CompanyDetailsViewController: CompanyDetailsViewControllerProtocol {
    func show(details: CompanyDetailsModel.ViewModel) {
        companyNameLabel.text = details.name
        commercialRecordLabel.text = details.commertialRecord
        taxNumberLabel.text = details.taxNumber
        activityLabel.text = details.activity
        inchargeNameLabel.text = details.inChargePerson
        idNumberLabel.text = details.idNumber
        phoneNumberLabel.text = details.phoneNumber
        emailLabel.text = details.email
        ibanLabel.text = details.iban
        bankNameLabel.text = details.bankName
        profitShareLabel.text = details.profitShare
        discountLabel.text = details.discountPrecent
        conversionTypeLabel.text = details.conversionType
    }
    
    
}
