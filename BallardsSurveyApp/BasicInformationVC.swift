//
//  BasicInformationVC.swift
//  BallardsSurveyApp
//
//  Created by Parthib Biswas on 09/03/18.
//  Copyright © 2018 Parthib Biswas. All rights reserved.
//

import UIKit

class BasicInformationVC: UIViewController {

    @IBOutlet var yourContactInfoView: UIView!
    @IBOutlet var yourContactInfoNameView: UIView!
    @IBOutlet var yourContactInfoEmailView: UIView!
    @IBOutlet var yourContactInfoPhoneView: UIView!
    @IBOutlet var yourContactInfoNameTextFieldView: UIView!
    @IBOutlet var yourContactInfoEmailTextFieldView: UIView!
    @IBOutlet var yourContactInfoPhoneTextFieldView: UIView!
    @IBOutlet var yourContactInfoNameTextField: UITextField!
    @IBOutlet var yourContactInfoEmailTextField: UITextField!
    @IBOutlet var yourContactInfoPhoneTextField: UITextField!
    
    @IBOutlet var yourCurrentAddressView: UIView!
    @IBOutlet var yourCurrentAddress_AddressView: UIView!
    @IBOutlet var yourCurrentAddressZipCodeView: UIView!
    @IBOutlet var yourCurrentAddressCityView: UIView!
    @IBOutlet var yourCurrentAddressStateView: UIView!
    @IBOutlet var yourCurrrentAddressCountryView: UIView!
    @IBOutlet var yourCurrentAddressStreetAndNumberTextFieldView: UIView!
    @IBOutlet var yourCurrentAddressZipPostalCodeTextFieldView: UIView!
    @IBOutlet var yourCurrentAddressCityTextFieldView: UIView!
    @IBOutlet var yourCurrentAddressStateTextFieldView: UIView!
    @IBOutlet var yourCurrentAddressCountryTextFieldView: UIView!
    @IBOutlet var yourCurrentAddressStreetAndNumberTextField: UITextField!
    @IBOutlet var yourCurrentAddressZipPostalCodeTextField: UITextField!
    @IBOutlet var yourCurrentAddressCityTextField: UITextField!
    @IBOutlet var yourCurrentAddressStateTextField: UITextField!
    @IBOutlet var yourCurrentAddressCountryTextField: UITextField!
    
    @IBOutlet var yourCurrentAddressResidenceTypeView: UIView!
    
    @IBOutlet var yourCurrentAddressResidenceTypeApartmentView: UIView!
    @IBOutlet var yourCurrentAddressResidenceTypeApartmentViewHeightConstraint: NSLayoutConstraint!
    
    @IBOutlet var yourCurrentAddressFloorNumberView: UIView!
    
    @IBOutlet var yourCurrentAddressAccessibilityView: UIView!
    
    @IBOutlet var yourFutureAddressDetailsView: UIView!
    @IBOutlet var yourFutureAddressDetailsViewHeightConstraint: NSLayoutConstraint!
    
    @IBOutlet var yourFutureAddressView: UIView!
    @IBOutlet var yourFutureAddress_AddressView: UIView!
    @IBOutlet var yourFutureAddressZipCodeView: UIView!
    @IBOutlet var yourFutureAddressCityView: UIView!
    @IBOutlet var yourFutureAddressStateView: UIView!
    @IBOutlet var yourFutureAddressCountryView: UIView!
    @IBOutlet var yourFutureAddressStreetAndNumberTextFieldView: UIView!
    @IBOutlet var yourFutureAddressZipPostalCodeTextFieldView: UIView!
    @IBOutlet var yourFutureAddressCityTextFieldView: UIView!
    @IBOutlet var yourFutureAddressStateTextFieldView: UIView!
    @IBOutlet var yourFutureAddressCountryTextFieldView: UIView!
    @IBOutlet var yourFutureAddressStreetAndNumberTextField: UITextField!
    @IBOutlet var yourFutureAddressZipPostalCodeTextField: UITextField!
    @IBOutlet var yourFutureAddressCityTextField: UITextField!
    @IBOutlet var yourFutureAddressStateTextField: UITextField!
    @IBOutlet var yourFutureAddressCountryTextField: UITextField!
    
    @IBOutlet var yourFutureAddressResidenceTypeView: UIView!
    
    @IBOutlet var yourFutureAddressResidenceTypeApartmentView: UIView!
    @IBOutlet var yourFutureAddressResidenceTypeApartmentViewHeightConstraint: NSLayoutConstraint!
    
    @IBOutlet var yourFutureAddressFloorNumberView: UIView!
    
    @IBOutlet var yourFutureAddressAccessibilityView: UIView!
    
    @IBOutlet var desiredRelocationDateView: UIView!
    
    @IBOutlet var continueButton: UIButton!
    
    var yourCurrentAddressResidenceTypePickerContainerView = UIView()
    var yourCurrentAddressResidenceTypePickerView = UIPickerView()
    
    var yourCurrentAddressResidenceTypePickerViewValuesArray = ["Residence Type", "Apartment", "Detached House", "Terraced House", "Office"]
    var yourCurrentAddressAccessibilityPickerViewValuesArray = ["How is the accessibility?", "Great", "Fair", "Hard to reach.", "Not sure."]
    
    enum yourCurrentAddressResidenceTypeEnum {
        case selected
        case unselected
    }
    
    enum yourCurrentAddressResidenceTypeValuesEnum: String {
        case residenceType = "Residence Type"
        case apartment = "Apartment"
        case detachedHouse = "Detached House"
        case terracedHouse = "Terraced House"
        case office = "Office"
    }
    
    var yourCurrentAddressResidenceTypeValues: yourCurrentAddressResidenceTypeValuesEnum!
    
    enum yourCurrentAddressAccessibilityEnum: String {
        case howIsTheAccessibility = "How is the accessibility?"
        case greate = "Great"
        case fair = "Fair"
        case hardToReach = "Hard to reach."
        case notSure = "Not sure."
    }
    
    var yourCurrentAddressAccessibilityValues: yourCurrentAddressAccessibilityEnum!
    
    enum yourFutureAddressResidenceTypeEnum {
        case selected
        case unselected
    }
    
    enum yourFutureAddressResidenceTypeValues: String {
        case residenceType = "Residence Type"
        case apartment = "Apartment"
        case detachedHouse = "Detached House"
        case terracedHouse = "Terraced House"
        case office = "Office"
    }
    
    enum yourFutureAddressAccessibilityEnum: String {
        case howIsTheAccessibility = "How is the accessibility?"
        case greate = "Great"
        case fair = "Fair"
        case hardToReach = "Hard to reach."
        case notSure = "Not sure."
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationController?.setNavigationBarHidden(false, animated: true)
        basicInformationUI()
    }

}
