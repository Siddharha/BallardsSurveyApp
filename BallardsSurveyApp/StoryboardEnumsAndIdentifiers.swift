//
//  StoryboardEnumsAndIdentifiers.swift
//  BallardsSurveyApp
//
//  Created by Parthib Biswas on 09/03/18.
//  Copyright © 2018 Parthib Biswas. All rights reserved.
//

import UIKit

enum AppStoryboard: String {
    case PageScroll = "PageScroll"
    case BasicInformation = "BasicInformation"
    
    var instance: UIStoryboard {
        return UIStoryboard(name: self.rawValue, bundle: Bundle.main)
    }
}

let pageScrollIdentifier = "pageScroll"
let basicInformationIdentifier = "basicInformation"
