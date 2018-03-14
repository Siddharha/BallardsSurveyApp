//
//  BasicInformationVC_UILayout.swift
//  BallardsSurveyApp
//
//  Created by Parthib Biswas on 09/03/18.
//  Copyright © 2018 Parthib Biswas. All rights reserved.
//

import UIKit

extension UIView {
    
}

extension BasicInformationVC {
    
    func navigationBarUI() {
        self.navigationController?.navigationBar.barTintColor = #colorLiteral(red: 1, green: 0.9224780681, blue: 0, alpha: 1)
        self.navigationController?.navigationBar.isTranslucent = false
        self.navigationController?.navigationBar.tintColor = #colorLiteral(red: 0.2509803922, green: 0.2509803922, blue: 0.2549019608, alpha: 1)
        let customFont = UIFont(name: "HelveticaNeue-CondensedBold", size: 20)
        self.navigationController?.navigationBar.titleTextAttributes = [NSFontAttributeName: customFont!, NSForegroundColorAttributeName:#colorLiteral(red: 0.2509803922, green: 0.2509803922, blue: 0.2549019608, alpha: 1)]
    }
    
    func yourContactInfoUI () {
        yourContactInfoView.layer.borderWidth = 1
        yourContactInfoView.layer.borderColor = UIColor.lightGray.cgColor
        yourContactInfoView.layer.cornerRadius = 10
        yourContactInfoView.layer.masksToBounds = true
        
//        yourContactInfoEmailView.layer.borderWidth = 1
//        yourContactInfoEmailView.layer.borderColor = UIColor.black.cgColor
        
        
//        yourContactInfoEmailView.addBorder(borderDirection: .top, borderWidth: 1, borderColor: UIColor.black)
//        yourContactInfoEmailView.addBorder(borderDirection: .right, borderWidth: 1, borderColor: UIColor.black)
        
        yourContactInfoEmailTextFieldView.layer.borderWidth = 1
        yourContactInfoEmailTextFieldView.layer.borderColor = UIColor.lightGray.cgColor
    }
    
    func yourCurrentAddressUI() {
        yourCurrentAddressView.layer.borderWidth = 1
        yourCurrentAddressView.layer.borderColor = UIColor.lightGray.cgColor
        yourCurrentAddressView.layer.cornerRadius = 10
        yourCurrentAddressView.layer.masksToBounds = true
        
        
    }
    
    func yourCurrentAddressResidenceTypeUI() {
        yourCurrentAddressResidenceTypeView.layer.borderWidth = 1
        yourCurrentAddressResidenceTypeView.layer.borderColor = UIColor.lightGray.cgColor
        yourCurrentAddressResidenceTypeView.layer.cornerRadius = 10
        yourCurrentAddressResidenceTypeView.layer.masksToBounds = true
    }
    
    func yourCurrentAddressFloorNumberUI() {
        yourCurrentAddressFloorNumberView.layer.borderWidth = 1
        yourCurrentAddressFloorNumberView.layer.borderColor = UIColor.lightGray.cgColor
        yourCurrentAddressFloorNumberView.layer.cornerRadius = 10
        yourCurrentAddressFloorNumberView.layer.masksToBounds = true
    }
    
    func yourCurrentAddressResidenceTypeApartmentUI() {
        yourCurrentAddressResidenceTypeApartmentView.alpha = 0
        yourCurrentAddressResidenceTypeApartmentViewHeightConstraint.constant = 0
    }
    
    func yourCurrentAddressAccessibilityUI() {
        yourCurrentAddressAccessibilityView.layer.borderWidth = 1
        yourCurrentAddressAccessibilityView.layer.borderColor = UIColor.lightGray.cgColor
        yourCurrentAddressAccessibilityView.layer.cornerRadius = 10
        yourCurrentAddressAccessibilityView.layer.masksToBounds = true
    }
    
    func yourCurrentAddressResidenceTypePickerViewUI() {
        yourCurrentAddressResidenceTypePickerContainerView.frame = CGRect(x: 0, y: self.view.frame.height - 250, width: self.view.frame.width, height: 250)
        yourCurrentAddressResidenceTypePickerContainerView.backgroundColor = UIColor.white
        
        yourCurrentAddressResidenceTypePickerView.frame = CGRect(x: 0, y: yourCurrentAddressResidenceTypePickerContainerView.frame.height - 210, width: yourCurrentAddressResidenceTypePickerContainerView.frame.width, height: 210)
        yourCurrentAddressResidenceTypePickerContainerView.addSubview(yourCurrentAddressResidenceTypePickerView)
        
        let doneButton = UIButton()
        doneButton.frame = CGRect(x: 0, y: 0, width: 70, height: 40)
        doneButton.backgroundColor = #colorLiteral(red: 0.07715261728, green: 0.2185674608, blue: 0.4178775549, alpha: 1)
        doneButton.setTitle("Done", for: .normal)
        doneButton.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        doneButton.titleLabel?.font = UIFont(name: "HelveticaNeue-Bold", size: 15)
        yourCurrentAddressResidenceTypePickerContainerView.addSubview(doneButton)
        
        let residenceTypeLabel = UILabel()
        residenceTypeLabel.frame = CGRect(x: 70, y: 0, width: yourCurrentAddressResidenceTypePickerContainerView.frame.width - 70, height: 40)
        residenceTypeLabel.backgroundColor = #colorLiteral(red: 0.3295781016, green: 0.3215588927, blue: 0.3214323223, alpha: 1)
        residenceTypeLabel.textColor = #colorLiteral(red: 0.941101253, green: 0.9412173033, blue: 0.9410749078, alpha: 1)
        residenceTypeLabel.font = UIFont(name: "HelveticaNeue-Medium", size: 15)
        residenceTypeLabel.text = "Residence Type: N/A"
        residenceTypeLabel.textAlignment = .center
        yourCurrentAddressResidenceTypePickerContainerView.addSubview(residenceTypeLabel)
        
        yourCurrentAddressResidenceTypePickerContainerView.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        
        self.view.addSubview(yourCurrentAddressResidenceTypePickerContainerView)
    }
    
    func yourFutureAddressUI() {
        yourFutureAddressView.layer.borderWidth = 1
        yourFutureAddressView.layer.borderColor = UIColor.lightGray.cgColor
        yourFutureAddressView.layer.cornerRadius = 10
        yourFutureAddressView.layer.masksToBounds = true
    }
    
    func yourFutureAddressResidenceTypeUI() {
        yourFutureAddressResidenceTypeView.layer.borderWidth = 1
        yourFutureAddressResidenceTypeView.layer.borderColor = UIColor.lightGray.cgColor
        yourFutureAddressResidenceTypeView.layer.cornerRadius = 10
        yourFutureAddressResidenceTypeView.layer.masksToBounds = true
    }
    
    func yourFutureAddressFloorNumberUI() {
        yourFutureAddressFloorNumberView.layer.borderWidth = 1
        yourFutureAddressFloorNumberView.layer.borderColor = UIColor.lightGray.cgColor
        yourFutureAddressFloorNumberView.layer.cornerRadius = 10
        yourFutureAddressFloorNumberView.layer.masksToBounds = true
    }
    
    func yourFutureAddressResidenceTypeApartmentUI() {
        yourFutureAddressDetailsViewHeightConstraint.constant = yourFutureAddressDetailsViewHeightConstraint.constant - CGFloat(90)
        yourFutureAddressResidenceTypeApartmentView.alpha = 0
        yourFutureAddressResidenceTypeApartmentViewHeightConstraint.constant = 0
    }
    
    func yourFutureAddressAccessibilityUI() {
        yourFutureAddressAccessibilityView.layer.borderWidth = 1
        yourFutureAddressAccessibilityView.layer.borderColor = UIColor.lightGray.cgColor
        yourFutureAddressAccessibilityView.layer.cornerRadius = 10
        yourFutureAddressAccessibilityView.layer.masksToBounds = true
    }
    
    func desiredRelocationDateUI() {
        desiredRelocationDateView.layer.borderWidth = 1
        desiredRelocationDateView.layer.borderColor = UIColor.lightGray.cgColor
        desiredRelocationDateView.layer.cornerRadius = 10
        desiredRelocationDateView.layer.masksToBounds = true
    }
    
    
    func basicInformationUI() {
        UIApplication.shared.statusBarStyle = .lightContent
        
        navigationBarUI()
        
        yourContactInfoUI()
        yourCurrentAddressUI()
        yourCurrentAddressResidenceTypeUI()
        yourCurrentAddressFloorNumberUI()
        yourCurrentAddressResidenceTypeApartmentUI()
        yourCurrentAddressAccessibilityUI()
//        yourCurrentAddressResidenceTypePickerViewUI()
        
        yourFutureAddressUI()
        yourFutureAddressResidenceTypeUI()
        yourFutureAddressFloorNumberUI()
        yourFutureAddressResidenceTypeApartmentUI()
        yourFutureAddressAccessibilityUI()
        
        desiredRelocationDateUI()
        
        continueButton.layer.cornerRadius = 10
    }
}
