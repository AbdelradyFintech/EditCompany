//
//  EditCompanyDetailsViewController.swift
//  iOS_ListTV
//
//  Created by Fintech on 07/12/2022.
//

import UIKit

protocol EditCompanyDetailsViewControllerProtocol: AnyObject {
    
}

class EditCompanyDetailsViewController: UIViewController {
    
    @IBOutlet weak var companyNameTextField: UITextField!
    @IBOutlet weak var incharegePersonTextField: UITextField!
    @IBOutlet weak var idNumberTextField: UITextField!
    @IBOutlet weak var phoneNumberTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    
    var router: EditCompanyDetailsRouterProtocol?
    var interactor: EditCompanyDetailsInteractorProtocol?
    var viewModel: EditCompanyDetailsModel.ViewModel?
    
    init(viewModel: EditCompanyDetailsModel.ViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configNavBar()
        showDetails()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }

    func configNavBar() {
        navigationController?.navigationBar.isTranslucent = true
        let img = UIImage(named: "logo_ic")
        navigationItem.titleView = UIImageView(image: img)

        let backButton = UIButton()
        let buttonImg = UIImage(named: "back_ic")
        backButton.setBackgroundImage(buttonImg,
                                      for: .normal)
        backButton.addTarget(self,
                             action: #selector(backButtonItemAction),
                             for: .touchUpInside)
        let leftItem = UIBarButtonItem(customView: backButton)
        navigationItem.leftBarButtonItem = leftItem
    }
    
    func showDetails() {
        guard let viewModel = viewModel else { return }
        self.companyNameTextField.text = viewModel.name
        self.incharegePersonTextField.text = viewModel.inChargePerson
        self.idNumberTextField.text = viewModel.idNumber
        self.phoneNumberTextField.text = viewModel.phoneNumber
        self.emailTextField.text = viewModel.email
    }

    @objc
    func backButtonItemAction() {
        router?.backButtonTapped()
    }

}

extension EditCompanyDetailsViewController: EditCompanyDetailsViewControllerProtocol {
    
}
