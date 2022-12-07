//
//  FilterCustomViewController.swift
//  iOS_Rasid
//
//  Created by Fintech on 21/11/2022.
//

import UIKit

class CloseCompanyViewController: UIViewController {

    @IBOutlet weak var backgroundView: UIView!
    @IBOutlet weak var alertView: UIView!
    @IBOutlet var tapGesture: UITapGestureRecognizer!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tapGesture.delegate = self
     }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    @IBAction func agreeButtonAction(_ sender: Any) {
        dismiss(animated: true)
    }
    
    @IBAction func disagreeButtonAction(_ sender: Any) {
        dismiss(animated: true)
    }
    
    @IBAction func tapGestureAction(_ sender: UITapGestureRecognizer) {
        dismiss(animated: true)
    }
    
}

extension CloseCompanyViewController: UIGestureRecognizerDelegate {
    
    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldReceive touch: UITouch) -> Bool {
        let touchLocation = touch.location(in: view)
        
        if !alertView.frame.contains(touchLocation) {
            return true
        }
        return false
    }
}
